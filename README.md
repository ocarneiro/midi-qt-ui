# midi-qt-ui
GUI for Midi input visualization

## What is it?

Something to test your [MisteRdeck](https://www.printables.com/model/134529-misterdeck) (Stream deck alternative).

It receives Midi signals and shows them in a Qt UI made in Python.

![](images/deck.gif)

## Install

1. Install Qt: https://www.qt.io/download-open-source

2. Install Microsoft Visual C++ Build Tools: https://visualstudio.microsoft.com/visual-cpp-build-tools/

    (you will need the Windows SDK. everything is about 12GB downloads. sorry)

3. Install Python

4. Install python-rt-midi: https://github.com/SpotlightKid/python-rtmidi/blob/master/INSTALL-windows.rst

    (Attention! Before running "python setup.py install", you have to download rtmidi source and place it in 
     the python-rtmidi/python-rtmidi/src/rtmidi folder)

    See [reviewed instructions](rtmidi-INSTALL-windows.rst) in this repository for proper Windows installation.

5. Install Python requirements:

        pip install -r requirements.txt

## Usage

Plug in your midi controller and run:

    python main.py

Have fun!