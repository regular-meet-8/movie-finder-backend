class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    post '/authenticate' do
        user = User.where(email: params[:email], password: params[:password]).first
        if user
          user.to_json
        else
          halt 401, "Unauthorized"
        end
    end
    
    get '/movies' do
        movies = Movie.all
        movies.to_json
    end

    get '/movies/:title' do
        movie = Movie.find_by_title(params[:title])
        movie.to_json 
    end

    get '/movie/:year' do
        movie = Movie.all
        updatedmovie = movie.select do |movie|
            movie.year == params[:year]
        end
        updatedmovie.to_json 
    end

    post '/movies' do
        data = Movie.create(
            title: params[:title],
            year: params[:year]
        )

        data.to_json
    end

    post '/users' do
        data = User.create(
            name: params[:name],
            email: params[:email],
            password: params[:password]
        )

        data.to_json
    end

    patch '/movies/:id' do
        movie = Movie.find(params[:id])
        movie.update(
            title: params[:title],
            year: params[:year]
        )

        movie.to_json
    end

    delete '/movies/:id' do
        movie = Movie.find(params[:id])
        movie.destroy
        movie.to_json
    end
end