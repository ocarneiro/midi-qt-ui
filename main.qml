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

    property bool botao12: false
    property bool botao11: false
    property bool botao10: false
    property bool botao9: false
    property bool botao8: false
    property bool botao7: false
    property bool botao6: false
    property bool botao5: false
    property bool botao4: false
    property bool botao3: false
    property bool botao2: false
    property bool botao1: false

    property QtObject backend

    
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
                
                RowLayout {
                    objectName: "linhaBotoes1"

                    Button {
                        background: Rectangle {
                            color: botao12 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }

                    Button {
                        background: Rectangle {
                            color: botao9 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }                        
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }

                    Button {
                        background: Rectangle {
                            color: botao6 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }   
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }

                    Button {
                        background: Rectangle {
                            color: botao3 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }                           
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }
                }

                RowLayout {
                    objectName: "linhaBotoes2"

                    Button {
                        background: Rectangle {
                            color: botao11 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }                          
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }

                    Button {
                        background: Rectangle {
                            color: botao8 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }                          
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }

                    Button {
                        background: Rectangle {
                            color: botao5 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }                          
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }

                    Button {
                        background: Rectangle {
                            color: botao2 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }                          
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }
                }

                RowLayout {
                    objectName: "linhaBotoes3"

                    Button {
                        background: Rectangle {
                            color: botao10 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }                             
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }

                    Button {
                        background: Rectangle {
                            color: botao7 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }                             
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }

                    Button {
                        background: Rectangle {
                            color: botao4 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }                             
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
                    }

                    Button {
                        background: Rectangle {
                            color: botao1 ? "steelblue" : "lightsteelblue"
                            border.color: "gray"
                        }                             
                        Layout.preferredWidth: 60
                        Layout.preferredHeight: 60
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