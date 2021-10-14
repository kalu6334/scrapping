
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
array_name = []
array_price = []

all_nom = page.xpath('//a[@class="cmc-table__column-name--name cmc-link"]')
all_nom.each do |nom|
    crypto_name = nom.text
    array_name.push crypto_name
    #print crypto_name
  end

all_price = page.xpath('//span[@class="sc-1ow4cwt-1 ieFnWP"]')
all_price.each do |price|
    crypto_price = price.text
    array_price.push crypto_price
    #puts crypto_price
  end

result_hash = Hash[array_name.zip(array_price)] 
#print array_name
#print array_price
puts result_hash




