require "sinatra"

get "/" do
  erb :index
end

get "/contacts" do
  @contacts = ["Erica", "Ian", "Josh"]
  erb :contacts_index
end

get "/contacts/:name" do |name|
  contacts = { "Erica" => "1498103498", "Ian" => "09183488114", "Josh" => "19384109389" }

  @name = name
  @phone_number = contacts[name]

  erb :contacts_show
end