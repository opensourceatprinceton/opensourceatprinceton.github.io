# Open Source At Princeton Website

Made using Bootstrap and Jekyll. Work in progress.

Want to work on it? It's a bit of a mess, but documentation will eventually be written. If you want to change the style, all of the stylesheets are written in SCSS and live in the `css` folder. The `_layouts` folder has all of the HTML layouts for the pages, and `_includes` have addons that can live through multiple pages.

Actual pages by themselves are in the root folder, and are usually Markdown (`.md`) files.

## How do I edit this?

Section is MASSIVELY work in progress right now, as there's a LOT of tech I ended up using (but you don't need to be familiar with all of it to edit the site.)

If you really want to test and build this on your own, first make sure you've got jekyll:

    gem install jekyll

and then clone this directory, cd your way into it, and run:

	jekyll build

to build the site into a new `_site` folder, where all of the Markdown pages in the directory should turn into HTML files.