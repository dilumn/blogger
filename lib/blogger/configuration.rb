require 'blogger/post'

module Blogger
  class Configuration
  	include Blogger::GetPosts
  	attr_accessor :key, :max_result, :blog_id

    def initialize
      yield(self) if block_given?
    end

  end
end