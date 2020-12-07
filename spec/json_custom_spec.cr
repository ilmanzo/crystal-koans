require "spec_helper"

# The JSON::Serializable module automatically generates methods for JSON serialization when included.

require "json"

class Location
  include JSON::Serializable

  @[JSON::Field(key: "lat")]
  property latitude : Float64

  @[JSON::Field(key: "lng")]
  property longitude : Float64

  def initialize(@latitude : Float64, @longitude : Float64)
  end
end

class House
  include JSON::Serializable
  property address : String
  property location : Location?

  def initialize(@address : String, @location : Location?)
  end
end

describe Student do
  it "knows type-safe JSON serialization for custom types" do
    house1 = House.new(address = "Crystal Road 1234", location = Location.new(latitude = 12.3, longitute = 34.5))
    # serialize a single object
    house1.to_json[0..10].should eq FILL_IN_THIS # => %({"address":"Crystal Road 1234","location":{"lat":12.3,"lng":34.5}})
    house2 = House.new(address = "Crystal Avenue 567", location = Location.new(latitude = 45.6, longitute = 1.23))
    houses = [house1, house2]
    # serialize an array of objects, check first char of the json
    houses.to_json[0].should eq FILL_IN_THIS
  end

  it "knows type-safe JSON de-serialization for custom types" do
    house = House.from_json(%({"address": "Crystal Road 1234", "location": {"lat": 12.3, "lng": 34.5}}))
    house.address.should eq FILL_IN_THIS
    houses = Array(House).from_json(%([{"address": "Crystal Road 1234", "location": {"lat": 12.3, "lng": 34.5}}]))
    houses[0].location.as(Location).latitude.should eq FILL_IN_THIS # Location could be Nil or not
  end
end
