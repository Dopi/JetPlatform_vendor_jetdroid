#!/system/bin/sh

DATABASE="/data/data/com.android.providers.settings/databases/settings.db"

# Wait for settings.db to be created
while [ ! -e $DATABASE ]
do
sleep 1
done
sleep 5

/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('install_non_market_apps', '1');"

# Expanded Power Widget options
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('expanded_widget_buttons', 'toggleWifi|toggleBluetooth|toggleGPS|toggleBrightness|toggleMobileData');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('expanded_brightness_mode', '0');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('expanded_network_mode', '0');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('expanded_screentimeout_mode', '0');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('expanded_ring_mode', '0');"

# Default Lockscreen style
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('lockscreen_style_pref', '1');"

# Music controls
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('statusbar_music_controls', '1');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('statusbar_always_music_controls', '0');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('lockscreen_music_controls', '1');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('lockscreen_always_music_controls', '0');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('dpad_music_controls', '0');"

# Default theme options
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('clock_color', '-1');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('dbm_color', '-16777216');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('date_color', '-1');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('plmn_label_color', '-2039584');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('spn_label_color', '-2039584');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('new_notifications_ticker_color', '-1');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('notifications_count_color', '-7039852');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('no_notifications_color', '-7039852');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('ongoing_notifications_color', '-7039852');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('latest_notifications_color', '-7039852');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('notifications_title_color', '-16777216');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('notifications_text_color', '-9934744');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('notifications_time_color', '-9934744');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('battery_percentage_status_icon', '0');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('show_status_clock', '1');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('show_plmn_sb', '1');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('notif_bar_color', '-16250872');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('hdpi_battery_alignment', '0');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('show_spn_ls', '0');"
/system/xbin/sqlite3 $DATABASE "INSERT INTO system (name, value) VALUES ('show_spn_sb', '0');"

