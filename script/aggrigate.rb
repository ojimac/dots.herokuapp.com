#!/usr/bin/env ruby

require 'rubygems'
require 'github_api'
require 'hashie'
require 'sqlite3'

github = Github.new
db = SQLite3::Database.new('development.sqlite3')

results = github.search.repos keyword: 'dotfiles'
results.repositories.each do |result|
  unless result.url.empty?
    sql = "insert into repos values (null, '', '#{result.url}', #{result.forks}, '#{result.owner}', '#{result.homepage}', #{result.watchers}, '', datetime('now'), datetime('now'))"
    puts result.url
    puts result.forks
    puts result.owner
    puts result.homepage
    puts result.watchers
    puts result.description

    db.execute(sql)
    puts 'insert...'
  end
end

db.close
