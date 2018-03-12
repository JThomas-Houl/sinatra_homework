require "sinatra"
require "sinatra/reloader"

get "/" do 
	"<h1> Welcome to ruby </h1>"
	
end


post "/" do 
	"<h1> Welcome to ruby here is post</h1>"
	
end

put "/" do
	"putting it up #{request.ip}"
end 

options "/" do
	"moaw"
end

get "/:id" do
	id = params[:id]

	"welcome bcack #{id}"
end


get "/Users/tech-a25/Sparta_GameProject/index.html" do
	"got it"
end 