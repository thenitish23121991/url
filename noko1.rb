
require 'nokogiri'
require 'open-uri'
require 'erb'

url = 'http://collegeink.in/article/meet5extraordinarypeople';

data = Nokogiri::HTML(open(url));

doc = data.at_css('html');
data1 = data.xpath("//text()").to_s;

puts data1