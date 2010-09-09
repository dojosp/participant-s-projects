class User < ActiveRecord::Base
  has_many :edges_as_source, :foreign_key => 'user_id', :class_name => 'Friendship'
  has_many :edges_as_sink,   :foreign_key => 'friend_id',   :class_name => 'Friendship'
  has_many :sources,  :through => :edges_as_sink
  has_many :sinks,    :through => :edges_as_source
  
  def friends
    self.sources + self.sinks
  end
end