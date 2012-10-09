#!/usr/bin/env rake
require "bundler/gem_tasks"

def download(version)
  source_url = "http://code.jquery.com/ui/#{version}/jquery-ui.js"
  `wget -O vendor/assets/javascripts/jquery-ui.js #{source_url}`

  source_url = "http://code.jquery.com/ui/#{version}/themes/base/jquery-ui.css"
  `wget -O vendor/assets/stylesheets/jquery-ui.css #{source_url}`
end

def write_version_file(version)
  version_file_text =
  <<-eos.gsub(/^ {4}/, '')
    module Jqueryui
      module Source
        VERSION = "#{version}"
      end
    end
  eos

  File.open('lib/jqueryui-source/version.rb', 'w') do |file|
    file.puts version_file_text
  end
end

def make_version(version)
  download(version)
  write_version_file(version)
  # `git ci -am "jQuery UI #{version}"`
  # puts `rake release`
end

task :make_all_versions do
  versions = "1.8.23, 1.8.22, 1.8.21, 1.8.20, 1.8.19, 1.8.18, 1.8.17, 1.8.16, 1.8.15, 1.8.14, 1.8.13, 1.8.12, 1.8.11, 1.8.10, 1.8.9, 1.8.8, 1.8.7, 1.8.6, 1.8.5, 1.8.4, 1.8.2, 1.8.1, 1.8.0, 1.7.3, 1.7.2, 1.7.1, 1.7.0, 1.6.0, 1.5.3, 1.5.2".split(", ")

  versions.each do |version|
    make_version(version)
  end
end

task :make_version do
  make_version("1.8.23")
end
