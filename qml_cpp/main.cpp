//#include <QtGui/QApplication>
//#include "qmlapplicationviewer.h"

//Q_DECL_EXPORT int main(int argc, char *argv[])
//{
//    QScopedPointer<QApplication> app(createApplication(argc, argv));

//    QmlApplicationViewer viewer;
//    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
//    viewer.setMainQmlFile(QLatin1String("qml/qml_cpp/main.qml"));
//    viewer.showExpanded();

//    return app->exec();
//}

#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include <QDeclarativeView>
#include <QDeclarativeComponent>
#include <QDeclarativeEngine>
#include <QDebug>
#include <QDeclarativeContext>
#include <QObject>
#include "sample.h"
#include <exception>
#include <QDebug>
Q_DECL_EXPORT int main(int argc, char *argv[])
{


    QScopedPointer<QApplication> app(createApplication(argc, argv));
    QScopedPointer<QmlApplicationViewer> viewer(QmlApplicationViewer::create());

    viewer->setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer->setMainQmlFile(QLatin1String("qml/qml_cpp/main.qml"));
    viewer->showExpanded();

    QDeclarativeView view;

    QDeclarativeContext *qdc=view.rootContext();
    qdc->setContextProperty("Sample",new Sample(&view));
    view.setSource(QUrl::fromLocalFile("qml/qml_cpp/main.qml"));
    view.show();

    return app->exec();
}



