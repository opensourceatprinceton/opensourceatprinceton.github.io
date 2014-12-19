# Open Source At Princeton Website

Made using [Bootstrap](http://getbootstrap.com) and [Jekyll](http://jekyllrb.com/).

## Getting Started

In order to edit / preview the site on your local machine, make sure jekyll is installed first:

	gem install jekyll

The project uses [SASS](http://sass-lang.com/) instead of pure CSS (SASS helps keep the CSS code neat and organized, which is why I use it), so you'll also need to process that into CSS for the site to look right when you are editing it. To build the CSS files, you'll also need [jekyll-sass](https://github.com/noct/jekyll-sass), so install that:
	
	gem install jekyll-sass
	
If you can't install gems, first make sure that you've installed [Ruby](https://www.ruby-lang.org/en/)(version 2 and up) and [RubyGem](https://rubygems.org/pages/download).

At that point, all the dependencies should be met, so you can clone this repository, `cd` into it, and run:

	jekyll serve

to build the site and run it on the local server. Server will run on port 4000, so go to `http://localhost:4000` to preview it.

## Editing Site Structure

For more documentation on how to edit the site's content and structure, visit Jekyll's docs as well.

The site's structure follows a standard Jekyll site's, as follows:

* `_includes`: Partials and HTML code that is reusable across multiple pages (including the navigation)
* `_layouts`: Layouts and templates for each page
* `_plugins`: Jekyll plugins. Currently only uses jekyll-sass to process the SASS->CSS
* `_posts`: Individual blog posts, written in Markdown

The other folders should be self-explanatory, with the possible exception of `test`, used to build test cases. Currently, no test cases have been written.

To change the look and feel of the site, you'll need to go through the `css` folder and edit the source SASS files, as well as `_includes` and `_layouts` to change how each page should look.

## Editing Content

Most of the site's content is written as [Markdown](http://daringfireball.net/projects/markdown/) (files with an `.md` extension), though Jekyll also supports pages written in plain HTML.

Something that looks interesting is http://prose.io/ - a tool to help edit Github pages. That might make things easier in the long run, but I (Diana) haven't personally used it, so it remains undocumented until it's been tested.

### Static Pages

To add static pages, just create an HTML or Markdown file in the project directory, and add your content to it (as per Jekyll standard). Each file should, however, be prefixed with YAML front matter, which looks like this:

```
---
layout: default (or whatever layout you want to use, without extension)
title: (whatever the title should be)
---
```

Examples can be found in the pages that already exist. **The YAML front matter is important! Without it, the file won't be recognized as a page.**

### Blog Posts

To add a new blog post, add a new Markdown (or HTML) file to the `_posts` directory, with a filename that includes the date, and the title of the post in all lowercase and hyphenated, as such:

	year-month-day-title-separated-by-hyphens.md

(This is also Jekyll default)

As with static pages, posts should be prefixed by YAML front matter, although the `layout` field usually isn't necessary, unless you want to use a specific layout for that post.

### Images

Images go into the `img` directory, and can then be referenced by the pages. For clarity's sake, it is suggested that each blog post's images go into its own separate subdirectory, so that as the site grows, the `img` folder doesn't become unwieldy to manage.

## Contributing

Pull requests are welcome, as well as questions, updates, etc.
