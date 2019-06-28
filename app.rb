require 'sinatra'
require 'sinatra/activerecord'
set :database, "sqlite3:project-name.sqlite3"
Dir[__dir__+"/models/*.rb"].each {|file| require file }

get '/blog' do
    #index
    @posts = Post.all
    erb :index
end

get '/blog/new' do
    #new
    Post.create(name: "mi primer post", description: "nuevo post")
    erb :new
end

post '/blog' do
    #create

end

get '/blog/:id' do
    #show
    id = params[:id].to_i
    @posts = posts[id]
end

post '/blog' do
    #create

end

get '/blog/:id/edit' do
    #edit
end

put '/blog/' do
    #update
end

patch '/blog/' do
    #update
end

delete '/blog/' do
    #destroy
end