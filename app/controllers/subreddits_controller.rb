class SubredditsController < ApplicationController
  def index
    p params
    p "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    @subreddits = Subreddit.all
  end

  def show
    @subreddit = Subreddit.find(params[:id])
  end
end
