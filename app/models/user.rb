class User < ActiveRecord::Base
validates :pseudo, presence: true, uniqueness: true
end
