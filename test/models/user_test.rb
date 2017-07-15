require 'test_helper'

class UserTest<ActiveSupport::TestCase
  def setup
	@user=User.new(name:"Arjun",email:"akasana8@gmail.com",description: "Here i am an dkjl ")
  end
test "User should be valid" do 

	assert @user.valid?
 end
test "name should be present" do
	@user.name=" "
	assert_not @user.valid?

end 	

test "name length should not be too long" do
  @user.name="a" * 101
  assert_not @user.valid?
end
  
test "name length should not be too short" do 
  @user.name="aaaa"
  assert_not @user.valid?
end

test "email  id should be present" do 
    @user.email=" "
    assert_not @user.valid?
end
test "email length should be in bounds" do
@user.email="a"*100 + "example.com"
assert_not @user.valid?
  end
test "email should be unique" do
dup_user=@user.dup;
dup_user.email=@user.email.upcase
@user.save
assert_not dup_user.valid?
end
 test 'email should be valid' do
valid_address=%w[gher@eeee.com A_BBB-DS@eee.hello.org user1@example.com first.last@eee.in laura+joe@monk.cm]
 valid_address.each do |va|
 @user.email=va
 assert  @user.valid?, '#{va.inspect} should be valid'
end
 end
 test 'email shoud be rejected' do
invalid_address=%w[user4@example,com user4_at_e.org user4.name@example. eee@i_am_.com foo@ee+aar.com]
invalid_address.each  do |inv|
  @user.email=inv
  assert_not @user.valid?,  '#{inv.inspect} should be invalid'
 end
end
test "description should be present" do 
   @user.description=" "
    assert_not @user.valid?
end

test "description should not be too short" do 
   @user.description="a"*9
    assert_not @user.valid?
end

test "description should not be too long" do
     @user.description="a" *501
    assert_not @user.valid?	
end

end