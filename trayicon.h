#ifndef TRAYICON_H
#define TRAYICON_H

#include <QSystemTrayIcon>

class TrayIcon : public QSystemTrayIcon
{
    Q_OBJECT
public:
    TrayIcon();

public slots:
    void showTooltip(const QString &message);
    void showError(const QString &message);

private:
    QIcon m_normalIcon;
};

#endif // TRAYICON_H
