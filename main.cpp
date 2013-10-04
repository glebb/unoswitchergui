#include <QtGui/QGuiApplication>
#include <QQmlContext>
#include <QDebug>


#include "qtquick2applicationviewer.h"
#include "scriptlauncher.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QGuiApplication::setQuitOnLastWindowClosed(true);
    const QString name = "UnoTelly Netflix country switcher";
    app.setApplicationName(name);
    QtQuick2ApplicationViewer viewer;
    QIcon icon("://images/countryIcon.gif");
    viewer.setIcon(icon);
    viewer.setTitle(name);
    ScriptLauncher launcher;
    QQmlContext *context = viewer.rootContext();
    context->setContextProperty("scriptLauncher", &launcher);
    viewer.setMainQmlFile(QStringLiteral("qml/unoswitchergui/main.qml"));
    viewer.showExpanded();
    return app.exec();
}
