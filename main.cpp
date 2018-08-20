#include "map.h"
#include <QApplication>
#include <QtGlobal>




int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Map w;
    w.show();

    return a.exec();
}
