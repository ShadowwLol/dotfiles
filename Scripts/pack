#!/bin/sh
# usage:  makepkg.sh [pkg-name]
# if no pkg-name, will try to create package named after current directory, eg
# cd ~/src/code; makepkg.sh   # or put in MD build events
pkg=$1
ver=0.1.0
if [ -z $pkg ]; then
        pkg=$(pwd|grep -oE "[a-zA-Z0-9_]+$")
fi
curd=$(pwd)
curdd=$(pwd)/.
pver=$pkg-$ver
tarp=$curd/$pver.tar.gz
relp=$curd/$pver
echo "trying pkg: $pkg create -> $tarp"
rm -rf $relp
mkdir -p $relp
allbin=$(find $curdd -type f -iname '*.dll' -o -iname '*.exe' -o -iname '*.config'|grep -vE "Debug|\%temp\%"|grep bin|grep -vE "[0-9]+\.dll"|grep -v nunit| sed "s/\n/ /g")
for bin in $(echo "$allbin"); do
#       cp -vf $bin $relp
        cp -f $bin $relp
done
tar cvzf $tarp $relp
if [ $? = 0 ]; then
        sz=$(du -skh $tarp|cut -f1)
        echo "pkg ok at: $tarp $sz"
        exit 0
else
        echo errors making pkg: $tarp
        exit 1
fi
