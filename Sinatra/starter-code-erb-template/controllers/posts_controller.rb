class PostsController < Sinatra::Base
  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
 
  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader

    posts = [{
        id: 0,
        title: "Post 1",
        body: "This is the first post"
    },
    {
        id: 1,
        title: "Post 2",
        body: "This is the second post"
    },
    {
        id: 2,
        title: "Post 3",
        body: "This is the third post"
    }];
   
    get '/' do
   
          @title = "Blog posts"
   
          @posts = posts
      
          erb :'posts/index'
      
      end
        
      get '/:id' do
        @title = "show posts"
        # get the ID and turn it in to an integer
        id = params[:id].to_i
   
        # make a single post object available in the template
        @post = posts[id]
        
        erb :'posts/show'
        
      end
   
   end

  get '/' do
    erb :'home_page'
 
  
  end

  get '/new'  do
    
    erb :'new'
    
  end
    
  post '/' do
    
    erb :'create'
    
  end
    
  # put '/:id'  do

  #   id = params[:id].to_i

  #   #make a single post obj 
  #   @post = posts[id]

  #   erb :'update'
    
  # end
    
  delete '/:id'  do

    @del = params[:id]

    erb :'delete'
    
    
    
  end
    
  get '/:id/edit'  do

    @edit = params[:id]
    erb :'edit'
    
    
  end

  get '/:id' do

    @show = params[:id]
    
    erb :'show'
    
  end

end