#!/system/bin/sh
date="$( date "+%Y年%m月%d日%H时%M分%S秒")"
su -c cmd device_config put surfaceflinger surfaceflinger.vsync.enable true > /dev/null 2>&1;
su -c cmd device_config put surfaceflinger surfaceflinger.vsync.timeout 10 > /dev/null 2>&1;
su -c cmd device_config put surfaceflinger surfaceflinger.vsync.interpolation false > /dev/null 2>&1;
su -c cmd device_config put surfaceflinger surfaceflinger.layers.max 100 > /dev/null 2>&1;
su -c cmd device_config put surfaceflinger surfaceflinger.layers.default 10 > /dev/null 2>&1;
su -c cmd device_config put surfaceflinger set_max_frame_rate_multiplier 0.5 > /dev/null 2>&1;
echo "$date *查看VSync是否启用$(su -c cmd device_config get surfaceflinger surfaceflinger.vsync.enable)*" 
echo "$date *列出所有已配置启用项$(su -c cmd device_config list surfaceflinger)*" 