require 'http'
require 'json'

module Blogger
  module GetPosts

    def get_blogposts
      response = HTTP.get("https://www.googleapis.com/blogger/v3/blogs/#{blog_id}/posts?maxResults=#{@max_result}&key=#{key}")
    	@json_response = JSON.parse(response.to_s)
    end
  end
end