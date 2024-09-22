#!/bin/sh

# SPDX-FileCopyrightText: 2024 Boyuan Yang <byang@debian.org>
# SPDX-License-Identifier: GPL-3.0-only or LGPL-2.0-or-later or CC0-1.0 or BSD-3-Clause

set -e

echo 'Starting notify-osd ...'
/usr/libexec/notify-osd &
sleep 2
echo 'Running make check ...'

if ! make check; then
    exit 1
else
    exit 0
fi
