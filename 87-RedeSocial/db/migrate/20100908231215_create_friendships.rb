class CreateFriendships < ActiveRecord::Migration
  def self.up
    create_table :friendships do |t|
      t.references :friend
      t.references :user #user too, but need to be explained on model
    end
  end

  def self.down
    drop_table :friendships
  end
end
