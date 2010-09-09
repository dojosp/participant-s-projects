class Friendship < ActiveRecord::Base
  belongs_to :source, :foreign_key => "user_id", :class_name => "User"
  belongs_to :sink,   :foreign_key => "friend_id",   :class_name => "User"
end

