class Review < ActiveResource::Base
    self.site = "http://reviews:2617"

    attr_accessor :comment
  end
