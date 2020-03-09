require_relative 'config/environment'

class App < Sinatra::Base
	get '/' do
		"Hello, World!"
	end
	get '/name' do
		self.data_points('name')
	end
	get '/hometown' do
		self.data_points('hometown')
	end
	get '/favorite-song' do
		self.data_points('favorite song')
	end


	def data_points(thing)
		"My #{thing} is __"
	end
end
