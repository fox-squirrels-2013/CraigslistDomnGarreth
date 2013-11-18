get '/' do
  # Look in app/views/index.erb
  @categories=Category.all
  erb :index
end

get '/posts/add' do
  # Create a new post page
  erb :create_post
end

post '/posts/add' do
  #Adds a post to the database
  post = Post.new(params[:post])
  if post.save
 	redirect '/'
  else
  	@errors = post.errors
  	erb :create_post
  end	
end

get '/category/:id' do
  # Show all Posts for a Category
  @posts=Post.where(category_id: params[:id])
  erb :posts_in_category
end

get '/posts/:id' do
  # Show that specific post
  @post=Post.find(params[:id])
  erb :specific_post
end