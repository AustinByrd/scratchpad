require 'sinatra'

get '/hi'do
  "sup bitch"
end

get '/sup/:name' do
  puts params.inspect
  name = params['name']
  if params['time'] == 'am'
    return "uhg it's to early, #{name}"
    if params['time'] == 'pm'
      return "boom chika boom chika boom chika boom party time, #{name}"
    end
  end
  "hello #{name}"
end