#include <QApplication>
#include <QQmlApplicationEngine>
#include <string>
#include <QDebug>
#include <QQuickView>
#include <QQuickItem>
#include <myclass.h>
#include <QMediaRecorder>


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QObject *item = engine.rootObjects().first();


//    QQuickView view(QUrl::fromLocalFile("qrc:///main.qml"));
//    QObject *item = view.rootObject();

    MyClass myclass;
    QObject::connect(item , SIGNAL(qmlSignal(QString)),
                     &myclass , SLOT(cppslot(QString)));

    QObject::connect(item , SIGNAL(startRecord(bool)),
                     &myclass , SLOT(stardRecordslot(bool)));

    QObject::connect(item , SIGNAL(qmlTag (bool)) ,
                     &myclass , SLOT(tagClick(bool)));
  //  view.show();




    return app.exec();
}
