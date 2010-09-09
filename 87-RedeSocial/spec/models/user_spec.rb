require 'spec_helper'

describe User do
  before :each do
    @user = User.create :name => "Fabs"
    @friend = User.create name: "Joao"
    @user.friends << @friend
    @user.save
    @friend.save
  end
  
  it 'should have friends' do
    @user.friends.should == [@friend]
  end
  
  it 'should save friends' do
    fabs = User.find(@user.id)
    fabs.friends.count.should == 1
  end
  
  it 'should save reflexive friendship' do
    joao = User.find(@friend.id)
    joao.friends.count.should == 1
  end
end