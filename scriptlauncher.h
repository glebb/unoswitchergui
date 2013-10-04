#ifndef SCRIPTLAUNCHER_H
#define SCRIPTLAUNCHER_H

#include <QObject>
#include <QProcess>

class ScriptLauncher : public QObject
{
    Q_OBJECT

public:
    ScriptLauncher();
    Q_INVOKABLE void launchscript(QString param);

private:
    QProcess *m_process;

public slots:
    void finished(int retValue);

signals:
    void actionFinished(int retValue, const QString output);


};

#endif // SCRIPTLAUNCHER_H
