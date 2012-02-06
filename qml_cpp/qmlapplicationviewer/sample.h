#ifndef SAMPLE_H
#define SAMPLE_H
#include <QObject>
#include <QString>
class Sample:public QObject
{
    Q_OBJECT
public:
    Sample(QObject *parent=0);
    Q_INVOKABLE void getmouseposition(int,int);

};

#endif // SAMPLE_H
