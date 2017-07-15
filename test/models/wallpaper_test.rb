require 'test_helper'

class WallpaperTest<ActiveSupport::TestCase
def setup
	@user=User.create(name:"Arjun",email:"akasana8@gmail.com",description:"hey ho asj sj sjnbshj sjhjkjhs sjjhs")
	@wallpaper=@user.wallpapers.build(name:"Arjun",summary:"akasana8@gmail.com",description: "very good wallpaper and should have bebe shgsj djhd")
end
 test "wallpaper should be valid" do 
assert @wallpaper.valid?
 end
test "user_id should be present" do
@wallpaper.user_id=nil
assert_not @wallpaper.valid?
end

 test "wallpaper name should be present" do 
@wallpaper.name=""
	assert_not @wallpaper.valid?
 end
test "wallpaper name should not be too long" do
@wallpaper.name="a"*21
assert_not @wallpaper.valid?
end
test "wallpaper name should not be too short" do
@wallpaper.name="a"*4
assert_not @wallpaper.valid?
end
test "summary should be present" do
@wallpaper.summary=""
assert_not @wallpaper.valid?	
end
test "summary should not be too long" do
@wallpaper.summary="a"*101
assert_not @wallpaper.valid?
end
test "summary should not be too short " do
@wallpaper.summary="a"*9
assert_not @wallpaper.valid?	
end
test "description should be present" do 
   @wallpaper.description=" "
    assert_not @wallpaper.valid?
end

test "description should not be too short" do 
   @wallpaper.description="a"*9
    assert_not @wallpaper.valid?
end

test "description should not be too long" do
     @wallpaper.description="a" *501
    assert_not @wallpaper.valid?	
end




end	