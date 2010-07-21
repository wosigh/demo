set STAGING_DIR=STAGING\com.eclecticdesignstudio.haxedemo

rmdir /s /y %STAGING_DIR%
del *.ipk
mkdir %STAGING_DIR%

copy appinfo.json %STAGING_DIR%
copy Main %STAGING_DIR%
copy icon.png %STAGING_DIR%
copy "C:\Development\haXe\nekonme\version2\ndll\webOS\nme.so" %STAGING_DIR%
copy "C:\Development\haXe\hxcpp\bin\webOS\std.so" %STAGING_DIR%
copy "C:\Development\haXe\hxcpp\bin\webOS\nekoapi.so" %STAGING_DIR%
copy "C:\Development\haXe\hxcpp\bin\webOS\regexp.so" %STAGING_DIR%

arm-none-linux-gnueabi-strip -s %STAGING_DIR%\Main
arm-none-linux-gnueabi-strip -s %STAGING_DIR%\nme.so
arm-none-linux-gnueabi-strip -s %STAGING_DIR%\std.so
arm-none-linux-gnueabi-strip -s %STAGING_DIR%\nekoapi.so
arm-none-linux-gnueabi-strip -s %STAGING_DIR%\regexp.so

echo filemode.755=Main > %STAGING_DIR%\package.properties
palm-package %STAGING_DIR%
