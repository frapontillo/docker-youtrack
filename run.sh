#!/bin/sh

echo "Launching YouTrack..."

java -Xmx1024m -Djava.awt.headless=true \
    -Djetbrains.youtrack.baseUrl=$YOUTRACK_BASE_URL \
    -Duser.home=$YOUTRACK_HOME_DIR \
    -Ddatabase.location=$YOUTRACK_DATA_DIR \
    -Ddatabase.backup.location=$YOUTRACK_BACKUPS_DIR \
    -Djetbrains.youtrack.licenseName="$YOUTRACK_LICENSE_USER_NAME" \
    -Djetbrains.youtrack.licenseKey=$YOUTRACK_LICENSE_KEY \
    -Djetbrains.youtrack.disableBrowser=true \
    -Djava.security.egd=/dev/zrandom \
    -jar /opt/Youtrack/youtrack-6.5.16367.jar 8080

echo "YouTrack has exited."