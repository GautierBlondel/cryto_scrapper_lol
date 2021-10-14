require 'open-uri'
require 'nokogiri'

crypto_arr= []

def get_money(crypto_arr)
  doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   
  doc.xpath("//tbody/tr/td[3]/div").each_with_index do |node, index|
  crypto_arr.push({
    "#{node.text}" => doc.xpath("//tbody/tr/td[5]/div")[index].text
  })
  end
  return crypto_arr
end

