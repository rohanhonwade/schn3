xml = Builder::XmlMarkup.new
xml.instruct!
xml.articles do
  @articles.each do |article|
    xml.article do
      xml.name article.name
      xml.category article.category
    end
  end
end