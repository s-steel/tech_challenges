
The methods:
class CreateUserProfile
  def self.before_create(email)
    profiles = SocialMediaProfiles.fetch_social_profiles(email)
#     the profiles are returned with all the info for each network
    result = SocialMediaProfiles.save_profiles(profiles)
#     the results error out on the instagram id, invalid input syntax for integer
#     the db may be expecting a int and we are passing it a string
    puts result
    result['success']
  end
end

The tests:
RSpec.describe "CreateUserProfile" do
  it "test some users that work" do
    expect(CreateUserProfile.before_create("flowerchild@60s.com")).to eq(true)
    expect(CreateUserProfile.before_create("programmer@gizmo.com")).to eq(true)
  end
  
  # Creating these accounts should work, but something is wrong!
  # (We won't evaluate whether this test passes or not, you can use it if it is helpful)
  it "test some users that fail" do
    expect(CreateUserProfile.before_create("avocado@hipmail.com")).to eq(true)
    expect(CreateUserProfile.before_create("squadgoals@gmail.com")).to eq(true)
    expect(CreateUserProfile.before_create("defaultdance@fortnitefan.com")).to eq(true)
  end
end

My response:

**From**: You
**To**: Casey (senior engineer teammate)
**Subject**: re: User creation error

Hi Casey, 

It seems that the issue stems from specificaly the users instagram network id.  In the passing tests all of those users are not using instagram with their profiles, while all three users where the tests fail, they are all using Instagram with the profile.  

More specifically this has to do with the 'id' of the instagram network.  The error that is being return states:
'invalid input syntax for integer: <the_users_istagram_ id_here>'

So, our method 'SocialMediaProfiles.fetch_social_profiles(email)' is returning all the information about each network.  Then when we run the method 'SocialMediaProfiles.save_profiles(profiles)' we are getting the error.  

My assumption is that fetching the profiles is returning the correct id for instagram, and I would start by looking at how we are saving the profiles.  In our method 'save_profiles' we may be expecting the id to come in in a format that is different from what is actually coming in.  There is a chance that the database is expecting an integer here, when we in fact have a string.

----

**Ticket #9584 Comment** to Tamara (customer support colleague)

Hi Tamara,

The bug seems to be caused when the users attempt to integrate instagram in the profile.  What the customers can do right away is to switch off instagram in the social media integration.  They can leave on all the other networks.  We will get to work on this issue with instagram and let you know as soon as it is fixed so that the customers can switch it back on. 

Let me know if you have any questions with this and if there is any other way I can help.