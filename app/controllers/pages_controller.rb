class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@skills = Skill.all
  end

  def about
    @skills = Skill.order('id ASC')
  end

  def contact
  end

  def tech_news
  	@tweets = SocialTool.twitter_search
  end
end
