#!/bin/bash
echo "--------------------"
echo "Updating version-id in template.xml"
#get current date and time
now=$(date '+%Y%m%d-%H%M%S')
echo "$now"
templatePath="tpl.xml"
cp $templatePath template.xml
id='Id'
sed -i -e "s/$id/$now/g" template.xml
echo "Version-id in template.xml is set to $now"
echo "--------------------"
echo "Compile less files:"
echo "Remove the old css-File luh-exam-style.css..."
sudo rm luh-exam-style.css
echo "Compile..."
sudo lessc luh-exam-style.less luh-exam-style.css
#sudo chown www-data:www-data LUH-Style.css
#sudo chown www-data:www-data template.xml
echo "...done!"
echo "--------------------"
