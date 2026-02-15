#!/usr/bin/env ruby
# frozen_string_literal: true

require "jekyll"

ROOT = File.expand_path("..", __dir__)
require File.join(ROOT, "_plugins", "fsm_content_transforms")

def assert(name)
  ok = yield
  if ok
    puts "OK   #{name}"
  else
    warn "FAIL #{name}"
    exit 1
  end
end

def out(input)
  FsmContentTransforms.transform(input)
end

# Legacy block tags
assert("legacy CODE_START/CODE_END") do
  out("=CODE_START=\nputs :ok\n=CODE_END=\n").include?("    puts :ok")
end

assert("legacy TEXTBOX_START/TEXTBOX_END") do
  html = out("=TEXTBOX_START=Head=\nBody\n=TEXTBOX_END=\n")
  html.include?("<div class=\"TEXTBOX\">") && html.include?("Head") && html.include?("Body")
end

# Legacy image family with caption
%w[IMAGE IMG IMG_CLEAR IMAGE_BIG IMG_PRIVATE].each do |tag|
  assert("legacy #{tag} caption") do
    html = out("=#{tag}=pic.jpg=Caption=\n")
    html.include?("src=\"pic.jpg\"") && html.include?("<figcaption class=\"figure-caption\">Caption</figcaption>")
  end
end

# Historical IMAGE_PRIVATE forms
assert("legacy IMAGE_PRIVATE width/height") do
  html = out("=IMAGE_PRIVATE=/files/cover.jpg=160=200==\n")
  html.include?("src=\"/files/cover.jpg\"") && html.include?("width=\"160\"") && html.include?("height=\"200\"") && !html.include?("figcaption")
end

assert("legacy IMAGE_PRIVATE src-only") do
  html = out("=IMAGE_PRIVATE=/images/mail.gif====\n")
  html.include?("src=\"/images/mail.gif\"") && !html.include?("figcaption")
end

# Other legacy tags
assert("legacy TABLE_CAPTION") do
  out("=TABLE_CAPTION=Table 1=\n").include?("<div class=\"table-caption\">")
end

assert("legacy ZOOM") do
  out("=ZOOM=Quote=\n").include?("<blockquote class=\"blockquote\">")
end

assert("legacy VIDEO YOUTUBE") do
  out("=VIDEO=YOUTUBE=abc123=").include?("youtube.com/embed/abc123")
end

assert("legacy VIDEO BLIP") do
  out("=VIDEO=BLIP=xyz=").include?("blip.tv/play/xyz")
end

# Preferred syntax
assert("preferred [[code]]") do
  out("[[code]]\nputs 1\n[[/code]]\n").include?("    puts 1")
end

assert("preferred [[textbox:...]]") do
  html = out("[[textbox:Head]]\nBody\n[[/textbox]]\n")
  html.include?("<div class=\"TEXTBOX\">") && html.include?("Head") && html.include?("Body")
end

{
  "image" => "IMAGE",
  "img" => "IMG",
  "img_clear" => "IMG_CLEAR",
  "image_big" => "IMAGE_BIG",
  "img_private" => "IMG_PRIVATE",
  "image_private" => "IMAGE_PRIVATE"
}.each do |directive, tag|
  assert("preferred [[#{directive}:...|...]]") do
    html = out("[[#{directive}:pic.jpg|Caption]]\n")
    html.include?("src=\"pic.jpg\"") && html.include?("Caption") && !html.include?("[[") && !html.include?("=#{tag}=")
  end
end

assert("preferred [[table_caption:...]]") do
  out("[[table_caption:Cap]]\n").include?("<div class=\"table-caption\">")
end

assert("preferred [[zoom:...]]") do
  out("[[zoom:Cap]]\n").include?("<blockquote class=\"blockquote\">")
end

assert("preferred [[youtube:...]]") do
  out("[[youtube:abc123]]\n").include?("youtube.com/embed/abc123")
end

assert("preferred [[blip:...]]") do
  out("[[blip:xyz]]\n").include?("blip.tv/play/xyz")
end

assert("preferred [[video:youtube:...]]") do
  out("[[video:youtube:abc123]]\n").include?("youtube.com/embed/abc123")
end

assert("preferred [[video:blip:...]]") do
  out("[[video:blip:xyz]]\n").include?("blip.tv/play/xyz")
end

puts "\nFSM transform validation passed."
