class ScrapedData
  include MongoMapper::Document

  key :url, String
  key :born,  Date
  key :text, String
  
end


