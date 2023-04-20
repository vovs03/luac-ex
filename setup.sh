# 2023-04-20 10:20

clear

####
# 1. DOWNLOAD LUA

# See original article here: https://www.lua.org/download.html
echo "Preparing for download Lua lang"

curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz
tar zxf lua-5.4.4.tar.gz
rm *.tar.gz


####
# 2. CLEAR ARCHIVE & MOVE TO CORRECTLY DIRECTORY

clear

echo "Create /lib folder"
sleep 1.7

echo "... and remove ./lua5.4.4 to ./lib/lua"
sleep 1.7

mkdir lib

mv ./lua-5.4.4 ./lib/lua
sleep 1.7
rm -rf ./lua-5.4.4

####
# 3. DELETE 2 SPECIAL* FILES

clear
sleep 1.7
echo "Delete lua.c & luac.c"

rm ./lib/lua/src/lua.c ./lib/lua/src/luac.c
sleep 1.7
clear

echo "Files successfully deleted.\n"
echo "Setup completed!\n"

