#ifndef MYCLASS
#define MYCLASS
#include <QObject>
#include <qdebug.h>


class MyClass : public QObject {
    Q_OBJECT
public slots:
    void cppslot(const QString &msg){
        qDebug() << "called c++ slot with message :" << msg ;
    }

    void stardRecordslot(bool start){
        start =  (start == false) ? true :false ;
        qDebug() << "start Recording : " << start ;
    }

    void tagClick(bool tag){
        qDebug() << "btn tag Clicked : " << tag ;
        tag = true ;
    }
};

#endif // MYCLASS

