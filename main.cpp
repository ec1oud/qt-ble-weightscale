/****************************************************************************
**
** Copyright (C) 2016 Shawn Rutledge
**
** This file is free software; you can redistribute it and/or
** modify it under the terms of the GNU General Public License
** version 3 as published by the Free Software Foundation
** and appearing in the file LICENSE included in the packaging
** of this file.
**
** This code is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
** GNU General Public License for more details.
**
****************************************************************************/

#include <QApplication>
#include <QMenu>
#include <QMessageBox>
#include <QSystemTrayIcon>
#include "trayicon.h"
#include "weightscale.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    app.setOrganizationDomain(QLatin1String("ecloud.org"));
    app.setApplicationName(QLatin1String("WeightScale"));

    // TODO maybe #ifdef QT_NO_SYSTEMTRAYICON ...
    if (!QSystemTrayIcon::isSystemTrayAvailable()) {
        QMessageBox::critical(nullptr, QApplication::applicationName(),
                              TrayIcon::tr("System tray unavailable"));
        return 1;
    }
    QApplication::setQuitOnLastWindowClosed(false);

    WeightScale weightScale;

    QMenu trayIconMenu;
//    trayIconMenu.addSeparator();
    QObject::connect(trayIconMenu.addAction(WeightScale::tr("Quit")), &QAction::triggered,
                     &app, &QApplication::quit);

    TrayIcon trayIcon;
    trayIcon.setContextMenu(&trayIconMenu);
    trayIcon.show();

    QObject::connect(&weightScale, &WeightScale::error, &trayIcon, &TrayIcon::showError);
    QObject::connect(&weightScale, &WeightScale::statusChanged, &trayIcon, &TrayIcon::showTooltip);

//    connect(trayIcon, &QSystemTrayIcon::messageClicked, &weightScale, &WeightScale::messageClicked);
//    connect(trayIcon, &QSystemTrayIcon::activated, &weightScale, &WeightScale::iconActivated);

    weightScale.deviceSearch();
    return app.exec();
}
