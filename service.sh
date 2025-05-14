start panel_color
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 5
done
sleep 5

service call SurfaceFlinger 1023 i32 1
service call SurfaceFlinger 1015 i32 1 f 1.2 f -0.2 f -0.2 f 0 f 0 f 1.22 f -0.15 f 0 f -0.2 f -0.1 f 1.4 f 0 f 0 f 0 f 0 f 1
service call SurfaceFlinger 1022 f 1.1

settings put system max_refresh_rate 120.0
settings put system min_refresh_rate 60.0
