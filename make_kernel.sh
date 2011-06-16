BUILD_PLACE=kernel_wm8505
MODULES=modules

mkdir -p delta/lib/firmware
rm -rf delta/lib/modules

cp firmware/rt*.bin delta/lib/firmware/
cp -r $MODULES/lib/modules delta/lib/
# rm delta/lib/modules/*/build
# rm delta/lib/modules/*/source
chown -R root:root delta/lib
