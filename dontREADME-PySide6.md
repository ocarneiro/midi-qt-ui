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

4. Install PySide6: https://pypi.org/project/PySide6/#description

    You may have to build from source. If that's the case, use the same version as the Qt installation.

    If you encounter an Access Denied error, it may just be the build options not pointing directly to the executable. It should look like this:

    python setup.py install --qtpaths=d:\qt\6.3.2\mingw_64\bin\qtpaths.exe

    ([reference](https://forum.qt.io/topic/139198/error-winerror-5-access-denied-when-building-from-source-on-windows-10))

    If you get a CMake Error, check the dependencies mentioned in the build instruction. You should download clang and set the LLVM_INSTALL_DIR apropriately.

5. Install Python requirements:

        pip install -r requirements.txt

## Usage

Plug in your midi controller and run:

    python main.py

Have fun!