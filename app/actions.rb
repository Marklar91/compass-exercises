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
	song.save
	redirect '/songs'
end

get '/songs/new' do
	erb :'songs/new'
end

