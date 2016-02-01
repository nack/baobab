class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  require 'cgi'
  require 'pp'

  def index
    #
    # search_word_org = 'バオバブ'
    # limit = 5
    #
    # search_word = CGI.escape(search_word_org)
    # url = URI("#{configatron.google_api_url}?v=1.0&key=#{configatron.google_api_key}&q=#{search_word}&rsz=#{limit}")
    # http = Net::HTTP.new(url.host)
    # response = http.get(url.request_uri)
    # response_data = JSON.parse(response.body)
    # if response_data['responseStatus'] == 403
    #   return image_list = nil
    # end
    # image_list = response_data['responseData']['results']
    #
    # pp image_list.inspect


  end

end
