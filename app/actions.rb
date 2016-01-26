# Homepage (Root path)
get '/' do
  erb :index
end

get '/songs' do
	@songs = Song.all
	erb :'songs/index'
end

post '/songs' do
	@song = Song.new(
		title: params[:title],
		url: params[:content],
		artist: params[:artist]
		)
	if @song.save
	redirect '/songs'
	else
		erb :'messages/new'
	end
end

get '/songs/new' do
	erb :'songs/new'
end

get '/songs/:id' do
	@song = Song.find params [:id]
	erb :'songs/show'
end

