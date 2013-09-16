module InterestsHelper

def get_recos
  intrs=Interest.where(user_id: current_user.id).to_a
  category=Array.new
  intrs.each do |intr|
    i=0
    article=Article.find_by(id: intr.article_id)
    category[i]=article.category
    i=i+1
  end

  uniq_categ=category.uniq
  artcls=Array.new
  uniq_categ.each do |ctgry|
    artcls<<Article.find_all_by_category(ctgry  )
  end
  artcls.flatten
end

def article_liked_by_user?(article)
  if (Interest.where(user_id: current_user.id, article_id: article.id).to_a.length > 0)
    true
  else
    false
  end
end
end
