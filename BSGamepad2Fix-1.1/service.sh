#!/system/bin/sh
# 等待系统初始化完成
sleep 10

# 定义源路径和目标路径
# 模块挂载路径，系统会自动把模块挂在 /data/adb/modules/你的ID 下
SRC_DIR="/data/adb/modules/blackshark_gamepad2_fix/system/usr/keylayout"
DST_DIR="/data/system/devices/keylayout"

# 创建目标目录
mkdir -p "$DST_DIR"

# 复制文件并赋予绝对正确的权限
if [ -f "$SRC_DIR/Vendor_ffe0_Product_0102.kl" ]; then
    cp -f "$SRC_DIR/Vendor_ffe0_Product_0102.kl" "$DST_DIR/"
    chmod 644 "$DST_DIR/Vendor_ffe0_Product_0102.kl"
    chown 0:0 "$DST_DIR/Vendor_ffe0_Product_0102.kl"
fi

if [ -f "$SRC_DIR/Vendor_ffe0_Product_0103.kl" ]; then
    cp -f "$SRC_DIR/Vendor_ffe0_Product_0103.kl" "$DST_DIR/"
    chmod 644 "$DST_DIR/Vendor_ffe0_Product_0103.kl"
    chown 0:0 "$DST_DIR/Vendor_ffe0_Product_0103.kl"
fi
