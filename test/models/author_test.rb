require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class AuthorTest < Test::Unit::TestCase
  context "Author Model" do

  	setup do
  		@author = Author.new(:name => "John")
  		@author.comments << Comment.new(:body => "bodytext")
  		@author.posts << Post.new(:title => "MathildaBlog", :body => "NewYork")
  		@author.save
  	end

    should 'construct new instance' do
    	assert @author.respond_to?(:posts)
    	assert_not_nil @author.posts
     end

    should 'construct new instance' do
    	assert @author.respond_to?(:comments)
    	assert_not_nil @author.comments
     end


  end
end
