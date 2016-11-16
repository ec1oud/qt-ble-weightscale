#include "trayicon.h"
#include <QApplication>

TrayIcon::TrayIcon() :
    m_normalIcon(":/icons/bathroom-scale-dial.svg")
{
    setIcon(m_normalIcon);
}

void TrayIcon::showTooltip(const QString &message)
{
    setToolTip(message);
}

void TrayIcon::showError(const QString &message)
{
    showMessage(QApplication::applicationName(), message, QSystemTrayIcon::Critical);
}
