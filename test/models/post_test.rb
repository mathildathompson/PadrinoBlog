require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class PostTest < Test::Unit::TestCase
  context "Post Model" do

  	setup do
  		@post = Post.new(:title => "MathildaBlog")
  		@tag = Tag.new(:name => "like")
  		@post.post_tags << PostTag.new(:tag => @tags, :post => @posts)
  		@post.comments << Comment.new(:body => "like")
      @post.authors = Author.new(:name => "John")
  	@post.save
  	end

    should 'construct new instance' do
    	assert @post.respond_to?(:comments)
    	assert_not_nil @post.comments
    	assert @post.comments.is_a?(Array)
    	assert_equal 1, @post.comments.length
    
     end

    should 'respond to author' do
    	assert @post.respond_to?(:authors)
    	assert_not_nil @post.authors
    	assert @post.authors.is_a? (Author)
    end

    should 'construct new instance' do
    	assert@post.respond_to?(:post_tags)
    	assert_equal 1, @post.post_tag.length
        assert @post.post_tags.is_a?(Array)
        
    end

    should "have many post" do
      assert @post.respond_to?(:tags)
    end

  	should "have one invoice" do
  		assert @post.respond_to?(:tags)
        assert_not_nil @post.tag
        assert @post.tag.is_a?(Tag)
    end
  end
end

