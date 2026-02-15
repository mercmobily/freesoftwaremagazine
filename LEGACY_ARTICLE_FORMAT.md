### Legacy from the previous system

Older articles follow the classic FSM forms:

- `=CODE_START= ... =CODE_END=`
- `=TEXTBOX_START=Title= ... =TEXTBOX_END=`
- `=IMAGE=src=caption=`
- `=IMG=src=caption=`
- `=IMG_CLEAR=src=caption=`
- `=IMAGE_BIG=src=caption=`
- `=IMG_PRIVATE=src=caption=`
- `=IMAGE_PRIVATE=...=`
- `=TABLE_CAPTION=Caption=`
- `=ZOOM=Quote=`
- `=VIDEO=YOUTUBE=VIDEO_ID=`
- `=VIDEO=BLIP=BLIP_ID=`

These still work, but should be avoided for new articles.
Notes:

- `IMAGE`, `IMG`, `IMG_CLEAR`, `IMAGE_BIG` render as `<figure>` with caption.
- `IMG_PRIVATE` and `IMAGE_PRIVATE` support historical forms:
  - `=...=src=caption=` -> figure with caption
  - `=...=src=width=height==` -> `<img ... width="..." height="...">`
  - `=...=src====` -> plain `<img ...>`


Optional duplicate legacy `nid` check (only if editing/adding `nid`):

```bash
bundle exec ruby -ryaml -e '
by_nid=Hash.new{|h,k|h[k]=[]}
Dir.glob("articles/*/index.md").sort.each do |path|
  txt=File.read(path)
  next unless txt =~ /\A---\s*\n(.*?)\n---\s*\n/m
  d=YAML.safe_load($1, aliases:true) || {}
  nid=d["nid"].to_s.strip
  by_nid[nid] << path unless nid.empty?
end
by_nid.select{|_,v| v.size>1}.each{|nid,paths| puts "nid=#{nid}\n  #{paths.join("\n  ")}"}
'
```

Optional Ryver-vs-Jekyll article comparison (migration/debug only):

```bash
bundle exec jekyll build -d legacy/_site_jekyll
bundle exec ruby legacy/migration/scripts/compare_ryver_jekyll_articles.rb --orig-root legacy/_site_orig --new-root legacy/_site_jekyll
```
