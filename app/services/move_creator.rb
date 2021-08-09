# app/services/move_creator.rb
require 'uri'
require 'net/http'

class MoveCreator
  def initialize()
  end

  def get_move
    uri = URI('https://5eddt4q9dk.execute-api.us-east-1.amazonaws.com/rps-stage/throw')
    res = Net::HTTP.get_response(uri)
    return res.body.body if res.is_a?(Net::HTTPSuccess)
    return nil
  end
end