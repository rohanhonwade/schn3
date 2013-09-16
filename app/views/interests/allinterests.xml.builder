xml.instruct! :xml, :version=>"1.0"

xml.allinterests do
  @interests.each do |interest|
    xml.interest do
      xml.user_id interest.user_id
      xml.article_id interest.article_id
    end
  end
end
