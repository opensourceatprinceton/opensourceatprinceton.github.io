#!/bin/bash          
cd templates
cd pages
d=0;

# grab all of the pages from the correct folder
for file in *; do
	if [[ -f $file ]]; then
        echo $file

        filename="${file%.*}"
	    page_templates[d]=$filename
	    file_content=$(cat $file)
	    page_content[d]=$file_content
	    let "d += 1"
    fi
done

cd ..

# how should special layout files be named? (default: layout-pagename.whatever)
layoutPrefix="layout-"

# how should the default layout file be named? (default: layout.whatever)
defaultLayout="layout"

cd ..

for (( j=0; j<d; j+=1 ))
do
	# check to see if a special layout file exists
	# TODO: clean it up and make it more efficient (possibly with regex?)
	cd templates

	echo "$layoutPrefix${page_templates[j]}"
	layoutName=$layoutPrefix${page_templates[j]}

	exist=0
	layoutContent=""
	defaultLayoutContent=""

	for file in *; do
		filename="${file%.*}"
		if [ "$filename" == "$layoutName" ]
		then
			exist=1
			layoutContent=$(cat $file)
		fi
		if [ "$filename" == "$defaultLayout" ]
		then
			defaultLayoutContent=$(cat $file)
		fi
	done

	cd ..

	# begin generating the output HTML file, with the same name as the templates
	extension=".html"
	outputName=${page_templates[j]}$extension
	cat gen/master.hbs > $outputName

	#generate layout file

	if [ "$exist" == 1 ] # if we have a specific layout file, use it!
	then
		echo "exist"
		echo '<script id="layout" type="text/x-handlebars-template">' >> $outputName
		echo "$layoutContent" >> $outputName
		echo '</script>' >> $outputName
	else # otherwise, use the default layout.whatever
		echo "doesn't exist"
		echo '<script id="layout" type="text/x-handlebars-template">' >> $outputName
		echo "$defaultLayoutContent" >> $outputName
		echo '</script>' >> $outputName
	fi

	# generate page content files
	echo '<script id="content" type="text/x-handlebars-template">' >> $outputName
	echo "${page_content[j]}" >> $outputName
	echo '</script>' >> $outputName

	cat gen/scripts.hbs >> $outputName

done