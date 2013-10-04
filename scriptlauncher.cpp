#include "scriptlauncher.h"
#include <QDebug>
#include <QDir>
#include <QtGui/QGuiApplication>

ScriptLauncher::ScriptLauncher()
{
    this->m_process = new QProcess(this);
    this->m_process->setProcessChannelMode(QProcess::MergedChannels);
    connect(this->m_process, SIGNAL(finished(int)), this, SLOT(finished(int)));
#if defined(Q_OS_MACX)
    qputenv("PATH", qgetenv("PATH") + ":/usr/local/bin");
#endif

}

void ScriptLauncher::launchscript(QString param)
{
    QStringList list;
    QDir::setCurrent(QGuiApplication::applicationDirPath());
    list.append("switch.js");
    list.append(param);
    this->m_process->start("casperjs", list);
}

void ScriptLauncher::finished(int retValue)
{
    QString temp = QString(m_process->readAll());
    actionFinished(retValue, temp);
}
