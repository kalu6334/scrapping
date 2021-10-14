
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))


all_nom = page.xpath('//a[@class="cmc-table__column-name--name cmc-link"]')
all_nom.each do |nom|
    crypto_name = nom.text 
    puts crypto_name
end

all_price = page.xpath('//span[@class="sc-1ow4cwt-1 ieFnWP"]')
all_price.each do |price|
    crypto_price = price.text
    puts crypto_price
end










