require('sinatra')
require ('sinatra/contrib/all') if development?
require ('pry-byebug')
require_relative('./models/profile')
require_relative('./models/wordformatter')
require ('json')

get '/' do 
  erb :home
end

get '/profile' do
  erb :profile

  content_type( :json )

 

  profile = Profile.new(params[:address], params[:building],params[:postcode], params[:phone].to_i)
  results = {
      address: "3 Argyle House",
      building: "Codebase",
      postcode: "e13 zqf",
      phone: "0131558030".to_i
      
  }
    erb( :result )
    return results.to_json
end

# ********************************************************

get '/camel/:string' do 
  wordformatter = Wordformatter.new('code_clan')
  return wordformatter.camelcase(params[:string])

#note from henry's explaination

# ********************************************************


# get '/profile/:address/:building/:postcode/:phone' do

#   profile = Profile.new(params[:address], params[:building],params[:postcode], params[:phone].to_i)
#   @details = profile.address.()
#   erb( :result )
# end
# get '/profile/:address/:building/:postcode/:phone' do

#   profile = Profile.new(params[:address], params[:building],params[:postcode], params[:phone].to_i)
#   @details = profile.building()
#   erb( :result )
# end

# get '/profile/:address/:building/:postcode/:phone' do

#   profile = Profile.new(params[:address], params[:building],params[:postcode], params[:phone].to_i)
#   @details = profile.postcode()
#   erb( :result )
# end

# get '/profile/:address/:building/:postcode/:phone' do

#   profile = Profile.new(params[:address], params[:building],params[:postcode], params[:phone].to_i)
#   @details = profile.phone()
#   erb( :result )
# end




# get '/profile/:address/:building/:postcode/:phone' do
#   content_type( :json )

#   profile = Profile.new(params[:address], params[:building],params[:postcode], params[:phone].to_i)
#   results = {
#       address: profile.address(),
#       building: profile.building(),
#       postcode: profile.postcode(),
#       phone: profile.phone()
      
#   }
#     erb( :result )
#     return results.to_json
#   end