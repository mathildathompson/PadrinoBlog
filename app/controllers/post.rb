PadrinoBlog::App.controllers :post do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :index do 
    @posts = Post.all
    @authors = Author.all
    render 'post/index'
  end

  get :show, :map => '/post/author/:name' do
    @posts = Author.find_by_name(params[:name]).posts
    render 'post/show'
  end

  get :tagged, :map => '/post/tagged/:name' do
    @posts = Tag.find_by_name(params[:name]).posts
    render 'post/show'
  end
  
end
