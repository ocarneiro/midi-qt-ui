import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.0

ApplicationWindow {
    objectName: "appWindow"
    width: 640
    height: 480
    visible: true
    title: qsTr("Controle MIDI")
    property string textoBotao
    property int valorSlider16: 100
    property int valorSlider17: 100
    property int valorSlider18: 100
    property int valorSlider19: 100



    Rectangle {
        objectName: "retângulo"
        border.color: "black"
        width: 560
        height: 300
        anchors.centerIn: parent
        // anchors.verticalCenter: parent - 200
    
        RowLayout {
            objectName: "linhas"
            spacing: 115
            anchors.fill: parent
            anchors.margins: 50

            ColumnLayout { // coluna dos botões
                objectName: "colunasBotoes"
                spacing: 6
                Layout.preferredWidth: 150

                Repeater {
                    objectName: "repetidorColunas"
                    model: 3            
                
                    RowLayout {
                        objectName: "linhasBotoes"

                        Repeater {
                            objectName: "repetidorLinhas"
                            model: 4

                            Button {
                                Layout.preferredWidth: 60
                                Layout.preferredHeight: 60
                            }
                        }
                    }

                }

            }

            ColumnLayout {  // coluna dos sliders
                spacing: 0
                Layout.preferredWidth: 230

                RowLayout {
                    Layout.maximumHeight: 170

                        Slider {
                            from: 0
                            to: 127
                            value: valorSlider16
                            orientation: Qt.Vertical

                            Layout.fillWidth: true
                            Layout.fillHeight: true
                        }

                        Slider {
                            from: 0
                            to: 127
                            value: valorSlider17
                            orientation: Qt.Vertical

                            Layout.fillWidth: true
                            Layout.fillHeight: true
                        }

                        Slider {
                            from: 0
                            to: 127
                            value: valorSlider18
                            orientation: Qt.Vertical

                            Layout.fillWidth: true
                            Layout.fillHeight: true
                        }

                        Slider {
                            from: 0
                            to: 127
                            value: valorSlider19
                            orientation: Qt.Vertical

                            Layout.fillWidth: true
                            Layout.fillHeight: true
                        }

                }
            }
        }
    }  // Rectangle
} // ApplicationWindow