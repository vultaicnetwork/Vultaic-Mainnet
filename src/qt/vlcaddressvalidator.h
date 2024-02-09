// Copyright (c) 2011-2014 The Bitcoin Core developers
// Copyright (c) 2017-2019 The Raven Core developers
// Copyright (c) 2020-2021 The VLC Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef VLC_QT_VLCADDRESSVALIDATOR_H
#define VLC_QT_VLCADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class VlcAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit VlcAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** vlc address widget validator, checks for a valid vlc address.
 */
class VlcAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit VlcAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // VLC_QT_VLCADDRESSVALIDATOR_H
