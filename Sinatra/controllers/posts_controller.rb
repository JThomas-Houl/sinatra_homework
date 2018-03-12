class PostsController < Sinatra::Base

    configure :development do
        register Sinatra::Reloader
    end

    #sets root as the parent dir of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    #set the view dir correctyl 
    set :views, Proc.new{File.join(root, "views") }



    get "/" do #get needs the url of a page 

        "<h1> Welcome to ruby </h1>"

        erb :'index'
        
    end

    # get "/:id" do #get needs the url of a page 

    #     #"<h1> Welcome to ruby </h1>"
    #     @title = params[:id]
    #     erb :'show'
        
    # end

    get "/names" do
        #age
        @age = params[:age]
        #first_name
        @first_name = params[:first_name]
        #last_name
        @last_name = params[:last_name]

        erb :"my_details"
    end
    

    # get "/:id" do #browers always uses gets
    #     id = params[:id]
    
    #     "welcome bcack #{id}"
    # end

    # post "/" do #post doesn't go to the web page on get puts to the webpage
    #     "<h1> go kitty go </h1>"
    # end 

end
