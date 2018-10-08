
require 'pry'

class  LaughTracks < Sinatra::Base

  get '/' do
    @random_special = Special.all.sample
    @comedians = Comedian.all
    erb :dashboard
  end

  get '/comedians/statistics' do
    @comedians = Comedian.all
    @specials = Special.all

    @avg_age = Comedian.avg_age
    @avg_run = Special.avg_runtime

    #? Who is responsible for assembling this list?
    @cities_list = @comedians.map do |comedian|
      comedian.city
    end.uniq
    # binding.pry

    erb :statistics
  end

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all


    #! TODO: hook up queries to database for avg runtime, totals, etc
    erb :comedians
  end

  get '/comedians/new' do
    erb :new_comedian
  end

  
  get '/specials' do
    @comedians = Comedian.all
    @specials = Special.all
    
    erb :specials
  end
  
  get '/specials/new' do
    @comedians = Comedian.all
    @specials = Special.all

    erb :new_special
  end
  
  post '/specials' do
    Special.create(params[:special])
    
    # binding.pry
    redirect '/comedians'
  end

  post '/comedians' do
    Comedian.create(params[:comedian])

    #! IF comedian.has_special? 
    #! redirect '/specials', where 

    redirect '/comedians'
  end
end