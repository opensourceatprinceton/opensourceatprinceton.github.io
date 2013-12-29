#!/bin/bash          
cd templates
c=0
echo $PWD

for file in *; do
	if [[ -f $file ]]; then
        echo $file

        filename="${file%.*}"
	    layout_templates[c]=$filename
	    file_content=$(cat $file)
	    layout_content[c]=$file_content
	    let "c += 1"
    fi
done

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
cd ..

for (( j=0; j<d; j+=1 ))
do
	extension=".html"
	outputName=${page_templates[j]}$extension
	cat gen/master.hbs > $outputName

	# generate layout files
	for (( i=0; i<c; i+=1 ))
	do
		a='<script id="'
		b='" type="text/x-handlebars-template">'
		echo $a${layout_templates[i]}$b >> $outputName
		echo "${layout_content[i]}" >> $outputName
		echo '</script>' >> $outputName
	done

	# generate page content files
	echo '<script id="content" type="text/x-handlebars-template">' >> $outputName
	echo "${page_content[j]}" >> $outputName
	echo '</script>' >> $outputName

	cat gen/scripts.hbs >> $outputName

done
# echo ${templates[0]} > file.txt
