#!/bin/bash
SOURCE_DIR="/home/student/Desktop/AJMAL"
BACKUP_DIR="/home/student/Desktop"
mkdir -p "$BACKUP_DIR"
TIMESTAMP=$(date +"%Y-%m-%d-%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/documents_backup_${TIMESTAMP}.tar.gz"
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed!"
    exit 1
fi

