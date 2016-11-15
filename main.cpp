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
#include "weightscale.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    app.setOrganizationDomain(QLatin1String("ecloud.org"));
    app.setApplicationName(QLatin1String("WeightScale"));

    WeightScale weightScale;
    weightScale.deviceSearch();
    return app.exec();
}