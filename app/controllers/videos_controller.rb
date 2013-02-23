require 'open-uri'

class VideosController < ApplicationController
  def index
    @videos = Video.limit(5)
  end
  def new
    Video.delete_all
  end
  def search
    search = params[:video]
    url = "http://youtube.com/results?search_query=#{search}"
    html = Nokogiri::HTML(open(url))
    lis = html.css('#search-results li')
    lis.each do |li|
      url = li.get_attribute('data-context-item-id')
      dog = li.get_attribute('data-context-item-title')
      # views = li.get_attribute('data-context-item-views')
      Video.create(:title => dog, :url => url)
    end
    redirect_to(videos_path)
  end
end