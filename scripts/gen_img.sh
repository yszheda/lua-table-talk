#/bin/env bash
# Generate image from DOT source code

PWD=`pwd`

pushd ${PWD}
cd "`dirname $0`/../img_src"
for dot_file in `ls *.dot`; do
    file_name=`echo ${dot_file} | awk -F'.' '{print $(NF-1)}'`
    img_file="../img/${file_name}.png"
    dot -Tpng ${dot_file} -o ${img_file}
done
popd
