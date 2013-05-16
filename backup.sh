#!/bin/sh
[[ $EUID -ne 0 ]] && echo "Run as root" && exit

if [ $# -lt 1 ]; then 
    echo "No destination defined. Usage: $0 destination [logfile]" >&2
    exit 1
elif [ $# -eq 1 ]; then
    DEST="$1"
    LOGFILE="$PWD/rsync.log"
elif [ $# -eq 2 ]; then
    DEST="$1"
    LOGFILE="$2"
elif [ $# -gt 2 ]; then
    echo "Too many arguments. Usage: $0 destination [logfile]" >&2
    exit 1
fi

START=$(date +%s)
rsync -aAXv /* $DEST --exclude={/dev/*,/proc/*,/sys/*,/tmp/*,/run/*,/mnt/*,/media/*,/lost+found,/var/lib/pacman/sync/*} 2>&1 | tee "$LOGFILE"
FINISH=$(date +%s)
TOTALTIME="total time: $(( ($FINISH-$START) / 60 )) minutes, $(( ($FINISH-$START) % 60 )) seconds" 
echo "$TOTALTIME"
BACKUP=$DEST/"Backup_$(date +%m-%d-%y)"
echo "Backup from $(date '+%A, %d %B %Y, %T')" > "$BACKUP"
echo "$TOTALTIME" >>"$BACKUP"
cat "$LOGFILE" >> "$BACKUP"
exit 