# These settings establish the proper database Connection
# The environment variable DATABASE_URL should be in the following format:
# scheme://{user}:{password}@{host}:{port}/path
# This is automatically configured on Heroku, you only need to worry if you
# also want to run your app locally

configure :production, :development do
	set :show_exceptions, true

	db = URI.parse(ENV['DATABASE_URL'] || 'mysql2://user:password@127.0.0.1/reminders')

	ActiveRecord::Base.establish_connection(
		:adapter 	=> db.scheme,
		:host     => db.host,
		:username => db.user,
		:password => db.password,
		:database => db.path[1..-1],
		:encoding => 'utf8'
	)
end