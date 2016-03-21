# `Class names in Ruby must begin with a capital letter.
class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5 }
end
