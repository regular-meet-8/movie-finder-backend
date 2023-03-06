class User < ActiveRecord::Base
    has_many :collections
    has_many :movies, through: :collections
end