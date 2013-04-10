require 'uri'
require 'httparty'
require 'json'
require 'awesome_print'
require 'openssl'
require 'digest/sha1'

class Scrapr
	class ScraprInternet
		include HTTParty
		format :html
	end

	def self.tsv(u)
		text = self.get(u,:string)
		self.tsv_to_data(text)
	end
	def self.tsv_to_data(text)
		text.split("\n").collect{|z|z.split("\t")}
	end

	def self.get(u,as= :string)
		if as== :string
			ScraprInternet.get(u).body
		else
			raise "?"
		end
	end



end


# require 'feedzirra'

# # fetching a single feed
# feed = Feedzirra::Feed.fetch_and_parse("https://spreadsheets.google.com/feeds/list/0Ak-IxjmMq9NMdGFvN2gtZkJBaXdlZDNENjFuNXNfdnc/od6/public/basic")


