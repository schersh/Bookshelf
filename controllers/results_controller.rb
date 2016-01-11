# index
get '/results' do
  # @results = Result.all 
  erb :"results/index"
end

# show
get '/results/:id' do
  erb :"results/show"
end
