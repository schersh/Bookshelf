require 'nokogiri'
require 'nori'
require 'open-uri'
# require 'json'

# methods for goodreads api
def search(title)
  search_results = open('https://www.goodreads.com/search.xml?key=9PDFrBnr73QPOaxy24u95w&q=' + title).read
end

def parse_search_result(search_result)
  parser = Nori.new
  parser.parse(search_result)
end

def main
  search_result = search("Ender's Game")
  puts search_result.class
  parsed = parse_search_result(search_result)
  puts(parsed)
end

main()

# methods for dcpli web scrape
def search_dcpl(title)
  dcpl_page = Nokogiri::HTML(open('https://catalog.dclibrary.org/client/rss/hitlist/dcpl/qu=' + title + '&lm=BOOKS'))
  puts dcpl_page.class
end

search_dcpl("Secret Garden")

def parse_dcpl_results(dcpl_results)

end

def main_dcpl
  search_result_dc = search_dcpl("Wizard of Oz")
  puts search_result.class
  parsed_dc = parse_dcpl_results(search_result_dc)
  puts(parsed_dc)
end
