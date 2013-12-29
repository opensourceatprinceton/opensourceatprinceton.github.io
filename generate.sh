#!/bin/bash          
cd templates
cd pages
d=0;
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

# check if a special layout file has been created

layoutPrefix="layout-"

cd ..

for (( j=0; j<d; j+=1 ))
do
	# check to see if a special layout file exists
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
		if [ "$filename" == "layout" ]
		then
			defaultLayoutContent=$(cat $file)
		fi
	done

	cd ..

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
# echo ${templates[0]} > file.txt
