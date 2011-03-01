#!/system/bin/sh

DATABASE="/data/data/com.android.providers.settings/databases/settings.db"

# Wait for settings.db to be created
while [ ! -e $DATABASE ]
do
sleep 1
done
sleep 5

/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('install_non_market_apps', '1');"

/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('expanded_widget_buttons', 'toggleWifi|toggleBluetooth|toggleGPS|toggleSound');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('lockscreen_style_pref', '1');"

/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('statusbar_music_controls', '1');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('statusbar_always_music_controls', '0');"

/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('lockscreen_music_controls', '1');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('lockscreen_always_music_controls', '0');"

/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('dpad_music_controls', '0');"
