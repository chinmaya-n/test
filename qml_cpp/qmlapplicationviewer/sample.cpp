#include "sample.h"
#include <QObject>
#include <QDeclarativeContext>
#include <QDeclarativeEngine>
#include <QDeclarativeComponent>
#include <QDebug>
Sample::Sample(QObject *parent):QObject(parent)
{
}
void Sample::getmouseposition(int a,int b)
{
    //QDeclarativeEngine *engine=new QDeclarativeEngine;
   // QDeclarativeComponent component(engine,QUrl::fromLocalFile(("qml/using_qml_cpp/main.qml")));
   // QObject *rect=component.create();
    //QObject *mousearea=rect->findChild<QObject *>("mouse");
    //qDebug()<<"position:"<<mousearea->property("mouseX").toDouble()<<","<<mousearea->property("mouseY").toDouble();
   // return mousearea->property(("mouseX")).toString();
    //qDebug()<<"hai";
    //qDebug()<<rect->property("i").toInt();
    qDebug()<<"position:"<<a<<","<<b;
}
