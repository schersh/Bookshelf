require 'open-uri'
require 'json'

book_reviews = open( 'https://www.goodreads.com/book/' + title + 'JSON')
response_status = books.status
response_body = books.read[]

puts response_status
puts response_body


# adding book to shelf
session = goodreads.get_auth_session(request_token, request_token_secret)

# book_id 631932 is "The Greedy Python"
data = {'name': 'to-read', 'book_id': 631932}

# add this to our "to-read" shelf
response = session.post('http://www.goodreads.com/shelf/add_to_shelf.xml', data)


# these values are what you need to save for subsequent access.
ACCESS_TOKEN = session.access_token
ACCESS_TOKEN_SECRET = session.access_token_secret
#
# URL: https://www.goodreads.com/shelf/add_to_shelf.xml
# HTTP method: POST
# Parameters:
# name: Name of the shelf (see: shelves.list)
# book_id: id of the book to add to the shelf
# a: Leave this blank unless you're removing from a shelf. If removing, set this to 'remove'. (optional)

# get xml response from goodreads
# title = $("#title").val();
search_results = open('https://www.goodreads.com/search.xml?key=' + 9PDFrBnr73QPOaxy24u95w + '&q=' + title)
response_status = GoodReads
response_body =
puts response_status
puts response_body

# parse xml into ruby object
