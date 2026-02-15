# Welcome to Free Software Magazine!

What you see here is the _full_ repository of articles in [Free Software Magazine](http:/www.freesoftwaremagazine.com).

They are all stored in Markdown format, with some extra FSM-specific tags for images, textboxes and zooms.

Once you clone the repository, you can create a fully working site using [ryver](https://github.com/mercmobily/ryver), which will convert the "source" site into the proper final site.

## The actual commands

    $ sudo npm install -g ryver
    $ git clone https://github.com/mercmobily/freesoftwaremagazine.git src
    $ mkdir _site
    $ ryver src _site

That's it! Now, under `_site` you have the fully functional web site.

## Wait, what on earth is Ryver?!?

Think of Ryver as [Jekyll](https://github.com/jekyll/jekyll) on steroids. It's a custom-written static site generator build to support all of Free Software Magazine's needs:

* Tags
* Categories
* Customisation to support extra tags
* ...and more

I looked and looked, before writing my own generator, hoping that I would be able to find something able to convert Free Software Magazine, but in the end I had to give in.

## Let us know if it works!

!Let us know if it works. And... don't forget to submit pull requests for [Issue #1](https://github.com/mercmobily/freesoftwaremagazine/issues/1)!

## Jekyll + GitHub Pages (current migration path)

This repository now also supports Jekyll builds and GitHub Actions deployment.

Local validation commands:

```bash
bundle exec jekyll build
bundle exec ruby legacy/migration/scripts/validate_fsm_transforms.rb
bundle exec ruby legacy/migration/scripts/validate_site_parity.rb
```

Operational docs:

- `ADD_ARTICLE_GUIDE.md` (article format, preferred FSM syntax, validation)
- `legacy/migration/docs/GITHUB_PAGES_SETUP.md` (migration/deploy notes)











