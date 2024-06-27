require 'net/http'
require 'json'

def fetch_data_from_api(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

def seed_urban_trees
  api_url = 'https://data.winnipeg.ca/resource/hfwk-jp4h.json'
  data = fetch_data_from_api(api_url)

  data.each do |tree_data|
    UrbanTree.create!(
      common_name: tree_data['common_name'] || 'Unknown',
      electoral_ward: tree_data['electoral_ward'] || 'Unknown'
    )
  end
end

seed_urban_trees

# Ensure AdminUser is created only if it doesn't already exist
if Rails.env.development? && AdminUser.find_by(email: 'admin@example.com').nil?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end


# API URL - Winnipeg Parks
# parks_api_url = 'https://data.winnipeg.ca/resource/tx3d-pfxq.json'

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
