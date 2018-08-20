#include "map.h"
#include "ui_map.h"
#include <QDebug>
#include <QtWebEngineWidgets/QWebEngineView>
#include <QtWebEngineWidgets/QWebEnginePage>
#include <QtWebEngineWidgets/QWebEngineSettings>
#include <QtWebChannel/QWebChannel>
#include <QMessageBox>
#include <QFile>
#include <QWebEngineProfile>
#include <QWebEngineScript>

Map::Map(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Map)
{
    ui->setupUi(this);
    QWebEngineProfile *profile = new QWebEngineProfile("MyWebChannelProfile", this);

        QFile webChannelJsFile(":/qtwebchannel/qwebchannel.js");
        if(  !webChannelJsFile.open(QIODevice::ReadOnly) ) {
            qDebug() << QString("Couldn't open qwebchannel.js file: %1").arg(webChannelJsFile.errorString());
        }
        else {
            qDebug() << "OK webEngineProfile";
            QByteArray webChannelJs = webChannelJsFile.readAll();
            webChannelJs.append(
                        "\n"
                        "var mainWindow"
                        "\n"
                        "new QWebChannel(qt.webChannelTransport, function(channel) {"
                        "     mainWindow = channel.objects.mainWindow;"
                        "});"
                        );

            QWebEngineScript script;
            script.setSourceCode(webChannelJs);
            script.setName("qwebchannel.js");
            script.setWorldId(QWebEngineScript::MainWorld);
            script.setInjectionPoint(QWebEngineScript::DocumentCreation);
            script.setRunsOnSubFrames(false);
//            profile->scripts()->insert(script);
        }


    QWebEngineView* webview = new QWebEngineView;
    QUrl url = QUrl("qrc:/google_maps.html");
    webview->page()->load(url);

    QWebChannel *webChannel = new QWebChannel;
    webChannel->registerObject("mainWindow", this);
    webview->page()->setWebChannel(webChannel);
//    webChannel->registerObject("workoutobject", this);

    ui->verticalLayout->addWidget(webview);
}

void Map::changeQtText(QString newText)
{
ui->label->setText(newText);
}
void Map::showLoginInfo(QString message)
{
QMessageBox::information(this, "Login info", "Username is " +message);
}

Map::~Map()
{
    delete ui;
}
