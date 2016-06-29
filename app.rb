require('sinatra')
require('sinatra/reloader')
require('./lib/find_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/target') do
  @find = params.fetch('find')
  @replace = params.fetch('replace')
  @target = params.fetch('target').find_replace(@find, @replace)
  erb(:target)
end
