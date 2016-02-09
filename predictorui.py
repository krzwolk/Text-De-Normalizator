# -*- coding: utf-8 -*-
"""
Description: 
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

import Tkinter
import tkFileDialog
import tkSimpleDialog
import tkMessageBox
import os
import subprocess
import shelve
import re
from tempfile import mkstemp
from werkzeug.utils import secure_filename
from train.train import gen_crfsuite_input, rate
from train.predict import predict, convert

model_name_re = re.compile(r'^(.*) - \d+%$')

class ModelNameDialog(tkSimpleDialog.Dialog):

    """Docstring for ModelNameDialog. """

    def body(self, master):
        """@todo: Docstring for body.

        :master: @todo
        :returns: @todo

        """
        self.model_name = Tkinter.Entry(master)
        self.model_name.pack({'side': 'bottom'})

        self.title = Tkinter.Label(master)
        self.title['text'] = 'Enter model name'
        self.title.pack({'side': 'bottom'})

        return self.model_name

    def apply(self):
        """@todo: Docstring for apply.
        :returns: @todo

        """
        self.result = self.model_name.get()

class SetQualityDialog(tkSimpleDialog.Dialog):

    """Docstring for SetQualityDialog. """

    def body(self, master):
        """@todo: Docstring for body.

        :master: @todo
        :returns: @todo

        """
        self.quality = Tkinter.Entry(master)
        self.quality.pack({'side': 'bottom'})

        self.title = Tkinter.Label(master)
        self.title['text'] = 'Enter new quality value'
        self.title.pack({'side': 'bottom'})

        return self.quality

    def apply(self):
        """@todo: Docstring for apply.
        :returns: @todo

        """
        self.result = int(float(self.quality.get()))
        
class App(Tkinter.Frame):

    """Docstring for App. """

    def __init__(self, master):
        """@todo: to be defined1.

        :master: @todo

        """
        Tkinter.Frame.__init__(self, master)
        self.shelf = shelve.open('predictor.db')
        self.pack()

        self.btn_quit = Tkinter.Button(self)
        self.btn_quit['text'] = 'Quit'
        self.btn_quit['command'] = self.quit
        self.btn_quit.pack({'side': 'bottom'})

        self.new_model = Tkinter.Button(self)
        self.new_model['text'] = 'New model'
        self.new_model['command'] = self.create_new_model
        self.new_model.pack({'side': 'bottom'})

        self.btn_predict = Tkinter.Button(self)
        self.btn_predict['text'] = 'Predict'
        self.btn_predict['command'] = self.predict
        self.btn_predict.pack({'side': 'bottom'})

        self.btn_update = Tkinter.Button(self)
        self.btn_update['text'] = 'Set quality'
        self.btn_update['command'] = self.change_quality
        self.btn_update.pack({'side': 'bottom'})

        self.model_list = Tkinter.Listbox(self)
        self.model_list.pack({'side': 'bottom'})

        self.show_models()

    def show_models(self):
        """@todo: Docstring for show_models.
        :returns: @todo

        """
        self.model_list.delete(0, Tkinter.END)
        for name in sorted(self.shelf.keys()):
            name = '{} - {}%'.format(name, self.shelf[name]['quality'])
            self.model_list.insert(Tkinter.END, name)

    def create_new_model(self):
        """@todo: Docstring for create_new_model.
        :returns: @todo

        """
        input_file = tkFileDialog.Open().show()
        if not input_file:
            tkMessageBox.showwarning('Bad input', 'Incorrect input file name')
            return
        dialog = ModelNameDialog(self)
        model_name = dialog.result
        if not model_name:
            tkMessageBox.showwarning('Bad input', 'Incorrect model name')
            return
        model_data = dict(name=model_name,
                          path=os.path.join('models', secure_filename(model_name)),
                          quality=0)
        (tmp_handle, tmp_path) = mkstemp(prefix='tmp_', dir='./')
        (crf_handle, crf_path) = mkstemp(prefix='tmp_', dir='./')
        os.close(tmp_handle)
        os.close(crf_handle)
        gen_crfsuite_input(input_file, tmp_path, crf_path)
        gen_crfsuite_input('test.pl', 'test.txt', 'test.crfsuite.txt')
        subprocess.check_output(
            ['crfsuite', 'learn', '-m', model_data['path'], crf_path])
        quality = subprocess.check_output(
            ['crfsuite', 'tag', '-r', '-m', model_data['path'], 'test.crfsuite.txt'])
        quality = rate(quality)
        model_data['quality'] = quality
        self.shelf[model_data['name']] = model_data
        self.shelf.sync()
        os.unlink(tmp_path)
        os.unlink(crf_path)
        self.show_models()

    def get_model_name(self):
        """@todo: Docstring for get_model_name.
        :returns: @todo

        """
        try:
            name = self.model_list.get(self.model_list.curselection())
        except Tkinter.TclError:
            tkMessageBox.showwarning('Bad input', 'Model should be selected first')
            return
        name = model_name_re.match(name).group(1)
        return name

    def get_model_path(self):
        """@todo: Docstring for get_model_path.
        :returns: @todo

        """
        try:
            name = self.model_list.get(self.model_list.curselection())
        except Tkinter.TclError:
            tkMessageBox.showwarning('Bad input', 'Model should be selected first')
            return
        name = model_name_re.match(name).group(1)
        return self.shelf[name]

    def predict(self):
        """@todo: Docstring for predict.
        :returns: @todo

        """
        input_file = tkFileDialog.Open().show()
        if not input_file:
            tkMessageBox.showwarning('Bad input', 'Incorrect input file name')
            return
        model = self.get_model_path()
        if not model:
            return
        predict(input_file, model['path'])
        convert(
            os.path.join(os.path.dirname(input_file), 'predicted_'+ os.path.basename(input_file)))

    def change_quality(self):
        """@todo: Docstring for change_quality.
        :returns: @todo

        """
        name = self.get_model_name()
        if not name:
            return
        dialog = SetQualityDialog(self)
        if dialog.result:
            model = self.shelf[name]
            model['quality'] = dialog.result
            self.shelf[name] = model
            self.shelf.sync()
            self.show_models()

if __name__ == '__main__':
    root = Tkinter.Tk()
    app = App(master=root)
    app.mainloop()
