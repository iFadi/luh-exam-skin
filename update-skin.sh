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
echo "Compile sass files:"
echo "Remove the old css-File luh-exam-style.css..."
sudo rm luh-exam-style/luh-exam-style.css
echo "Compile..."
sudo sass luh-exam-style/scss/luh-exam-style.scss luh-exam-style/luh-exam-style.css
echo "...done!"
echo "--------------------"
