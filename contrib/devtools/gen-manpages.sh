#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

VLCD=${VLCD:-$SRCDIR/vlcd}
VLCCLI=${VLCCLI:-$SRCDIR/vlc-cli}
VLCTX=${VLCTX:-$SRCDIR/vlc-tx}
VLCQT=${VLCQT:-$SRCDIR/qt/vlc-qt}

[ ! -x $VLCD ] && echo "$VLCD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
vlcVER=($($VLCCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for vlcd if --version-string is not set,
# but has different outcomes for vlc-qt and vlc-cli.
echo "[COPYRIGHT]" > footer.h2m
$VLCD --version | sed -n '1!p' >> footer.h2m

for cmd in $VLCD $VLCCLI $VLCTX $VLCQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${vlcVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${vlcVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
