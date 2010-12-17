#!/bin/bash
filesui=(base game menu netvision osd recordings schedule settings video gallery);


for value in ${filesui[@]}
do
  echo '<?xml version="1.0" encoding="utf-8"?>' > ../$value-ui.xml
  echo '<!DOCTYPE mythuitheme SYSTEM "../mythuitheme.dtd">' >> ../$value-ui.xml
  echo '<mythuitheme>' >> ../$value-ui.xml
  cat $value/*.xml >> ../$value-ui.xml
  echo "</mythuitheme>" >> ../$value-ui.xml
done

# BASE and OSD don't have the UI
mv ../base-ui.xml ../base.xml
mv ../osd-ui.xml ../osd.xml

cp *.xml ../
cp qtlook.txt ../
kill -USR1 $(pidof mythfrontend)
