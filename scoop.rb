require 'rubygems'
require 'pipe'
require 'sinatra'

  get '/' do
    Pipe.create do
      feed "http://www.oxfamblogs.org/fp2p/?feed=rss2"
      feed "http://chronicle.com/blognetwork/edgeofthewest/feed"
    end
  end
