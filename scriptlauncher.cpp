#include "scriptlauncher.h"
#include <QDebug>
#include <QDir>
#include <QtGui/QGuiApplication>

ScriptLauncher::ScriptLauncher(QObject *parent) : QObject(parent)
{
    this->m_process = new QProcess(this);
    this->m_process->setProcessChannelMode(QProcess::MergedChannels);
    connect(this->m_process, SIGNAL(finished(int)), this, SLOT(finished(int)));
    connect(this->m_process, SIGNAL(error(QProcess::ProcessError)),
            this, SLOT(error(QProcess::ProcessError)));

#if defined(Q_OS_MACX)
    qputenv("PATH", qgetenv("PATH") + ":/usr/local/bin");
#endif

}

void ScriptLauncher::launchscript(QString param)
{
    QStringList list;
    QDir::setCurrent(QGuiApplication::applicationDirPath());
    list << "switch.js" << param;
    this->m_process->start("casperjs", list);
}

void ScriptLauncher::finished(int retValue)
{
    QString temp = QString(m_process->readAll());
    actionFinished(retValue, temp);
}

void ScriptLauncher::error(QProcess::ProcessError error)
{
    Q_UNUSED(error);
    actionFinished(-1, "Error starting casperjs/phantomjs (not in PATH?)");
}
