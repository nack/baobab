class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  def index
    require 'open-uri'
    url = "https://www.google.co.jp/search?q=%E3%83%88%E3%82%A4%E3%83%AC%E3%83%83%E3%83%88%E3%83%9B%E3%83%AB%E3%83%80%E3%83%BC&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjZyePXg5DLAhXBnJQKHQtrDdUQ_AUIBygB&biw=1339&bih=860"
    #URL開く
    html = open(url).read
    #Nokogiriでパース
    parsed_html = Nokogiri::HTML(html)
    #imgタグだけ取得
    images = parsed_html.css('img')

    #raise images.inspect
    @imgsrcs = []
    if images.present?
        # Check the size with RMagick
        proper_image = ""
        images.each do |image|
            @imgsrcs.push image.attributes["src"].value
        end
    end
    @imgsrcs.uniq!

  end

end
