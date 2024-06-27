
require 'net/http'
require 'uri'
require 'json'

def fetch_data_from_api(url)
  uri = URI.parse(url)
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

# require 'net/http'
# require 'json'

# def fetch_data_from_api(url)
#   uri = URI(url)
#   response = Net::HTTP.get(uri)
#   JSON.parse(response)
# end

# def seed_schools_and_zones
#   api_url = 'https://data.winnipeg.ca/resource/5298-dhjx.json'
#   data = fetch_data_from_api(api_url)

#   data.each do |item|
#     next if item['zone_name'].nil? || item['zone_name'].strip.empty?

#     school = School.find_or_create_by(name: item['school_name']) do |s|
#       s.address = item['school_address']
#     end

#     school_zone = SchoolZone.find_or_create_by(name: item['zone_name'])

#     SchoolZoneSignage.create!(
#       school: school,
#       school_zone: school_zone,
#       sign_location: item['sign_location']
#     )
#   end
# end

# seed_schools_and_zones


# require 'net/http'
# require 'json'

# def fetch_data_from_api(url)
#   uri = URI(url)
#   response = Net::HTTP.get(uri)
#   JSON.parse(response)
# end

# def seed_urban_trees
#   api_url = 'https://data.winnipeg.ca/resource/hfwk-jp4h.json'
#   data = fetch_data_from_api(api_url)

#   data.each do |tree_data|
#     UrbanTree.create!(
#       common_name: tree_data['common_name'] || 'Unknown',
#       electoral_ward: tree_data['electoral_ward'] || 'Unknown'
#     )
#   end
# end

# seed_urban_trees

# # Ensure AdminUser is created only if it doesn't already exist
# if Rails.env.development? && AdminUser.find_by(email: 'admin@example.com').nil?
#   AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
# end


# API URL - Winnipeg Parks
# parks_api_url = 'https://data.winnipeg.ca/resource/tx3d-pfxq.json'

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
