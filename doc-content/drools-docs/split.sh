#!/bin/sh
sudo rm -rf myproject
sudo chmod -R 777 ../drools-docs
mkdir myproject
csplit --quiet --prefix=myproject/ source/file1.asciidoc "/\[id/" "{*}" 
find myproject/ -size 0 -delete
cd myproject
i=1
j=1
for file in 01 02
do
    echo $file
    mkdir category$i
    touch category$i/topic_title$i-fragment_title$j-con.asciidoc
    touch category$i/topic_title$i-fragment_title$j-con.asciidoc
    mv "$file" category$i/topic_title$i-fragment_title$j-con.asciidoc
    j=$((j+1))
done
i=2
j=1
for file in 03 04
do
    echo $file
    mkdir category$i
    touch category$i/topic_title$i-fragment_title$j-con.asciidoc
    touch category$i/topic_title$i-fragment_title$j-con.asciidoc
    mv "$file" category$i/topic_title$i-fragment_title$j-con.asciidoc
    j=$((j+1))
done
sudo chmod -R 777 ../myproject
