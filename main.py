# This Python file uses the following encoding: utf-8
import os
from pathlib import Path
import sys

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtCore import QObject
from PySide6.QtCore import Qt  # FindChildOption,FindChildOptions,FindChildrenRecursively,FindDirectChildrenOnly

import rtmidi
from rtmidi.midiutil import open_midiinput

app = QGuiApplication(sys.argv)
engine = QQmlApplicationEngine()
arquivo_qml = os.fspath(Path(__file__).resolve().parent / "main.qml")

midiin = rtmidi.MidiIn()
print(midiin.get_ports())


try:
    midiin, port_name = open_midiinput(0)
    print("Connected to %s" % port_name)
except (EOFError, KeyboardInterrupt):
    sys.exit()

class EventoMidiIn(object):

    def gira_knob(self, mensagem):
        _, controle, valor = mensagem
        if controle >= 16 and controle <=19:
            engine.rootObjects()[0].setProperty("valorSlider%d" % controle, valor)
        else:
            print("turning %s" % mensagem)


    def pressiona_tecla(self, mensagem):
        _, botao, _ = mensagem  # button_value is the second value in message
        engine.rootObjects()[0].setProperty("botao%d"%botao, True)

    def solta_tecla(self, mensagem):
        _, botao, _ = mensagem  # button_value is the second value in message
        engine.rootObjects()[0].setProperty("botao%d"%botao, False)

    mapa_comando_metodo = {
        176: gira_knob,
        144: pressiona_tecla,
        128: solta_tecla
    }

    def __init__(self, port):
        pass

    def __call__(self, event, data=None):
        mensagem, _ = event
        comando = mensagem[0]
        if comando in self.mapa_comando_metodo.keys():
            metodo = self.mapa_comando_metodo[comando]
            metodo(self, mensagem)


if __name__ == "__main__":
    # print(arquivo_qml)
    engine.load(arquivo_qml)
    if not engine.rootObjects():
        sys.exit(-1)

    midiin.set_callback(EventoMidiIn(port_name))

    sys.exit(app.exec())
