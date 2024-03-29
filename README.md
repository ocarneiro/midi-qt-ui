# midi-qt-ui
GUI for Midi input visualization

## What is it?

Something to test your [MisteRdeck](https://www.printables.com/model/134529-misterdeck) (Stream deck alternative).

It receives Midi signals and shows them in a Qt UI made in Python.

![](images/deck.gif)

## Install

1. Install Qt: https://www.qt.io/download-open-source

    You have to create an account and select a version to install.

    Qt with MingW seems to be working better than MSVC 2019 in Windows 11

2. Install Python

3. Install python-rt-midi: https://github.com/SpotlightKid/python-rtmidi/blob/master/INSTALL-windows.rst

    (Attention! Before running "python setup.py install", you have to download rtmidi source and place it in 
     the python-rtmidi/python-rtmidi/src/rtmidi folder)

    See [reviewed instructions](rtmidi-INSTALL-windows.rst) in this repository for proper Windows installation.

4. Install Python requirements:

        pip install -r requirements.txt

## Usage

Plug in your midi controller and run:

    python main.py

Have fun!