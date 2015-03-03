require 'httparty'
response = HTTParty.get('https://api.github.com/users/SolomonHD').to_hash
  puts response['avatar_url']
  puts response['login']
  puts response['avatar_url']
