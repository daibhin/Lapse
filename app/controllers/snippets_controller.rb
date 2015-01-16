class SnippetsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

  def create
    @snippet = current_user.snippets.build(snippet_params)
    if @snippet.save
      flash[:success] = "Snippet added!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def snippet_params
      params.require(:snippet).permit(:title, :content)
    end
end
