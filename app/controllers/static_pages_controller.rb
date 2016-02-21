class StaticPagesController < ApplicationController
  
  def home
    @snippet = current_user.snippets.build if user_signed_in?
  end

  def about
  end

  def contact
  end
  
  def blog
  end
end