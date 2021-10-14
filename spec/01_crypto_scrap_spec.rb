require_relative "../lib/01_crypto_scrap"

describe "getting results checked by array not empty" do 
  it "should return an array.length greater than zero" do 
    expect(get_money([])).to_not be_empty
  end
  it "should return BTC and ETH" do
    expect(get_money([]).detect {|e| e.keys}.include?("BTC")).to eq(true)
  end
end 

# describe "getting results checked by array not empty" do 
#   it "should return an array.length greater than zero" do 
#     expect(get_money([])).to_not be_empty
#   end
# end 
  