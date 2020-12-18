require "spec_helper"

require "csv"

# the 'csv' module provides methods and classes for
# parsing and generating CSV (comma-separated values) strings.
# This module conforms to RFC 4180 (https://tools.ietf.org/html/rfc4180)

grocery_list = %(\
  Name, Price, Quantity
  Orange, 1.8, 4
  Apple,  1.5, 5
  Mango,  1.9, 2
)

describe Student do
  it "can parse CSV data" do
    shopping_cart = 0
    csv = CSV.new(grocery_list, headers: true)
    while csv.next
      shopping_cart += csv["Price"].to_f*csv["Quantity"].to_i
    end
    shopping_cart.should eq FILL_IN_THIS
  end

  it "can generate CSV data" do
    result = CSV.build do |csv|
      csv.row "Name", "Age"
      csv.row "John", "20"
      csv.row "Peter", "30"
    end
    result.should eq FILL_IN_THIS
  end
end
