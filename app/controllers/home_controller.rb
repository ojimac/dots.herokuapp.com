class HomeController < ApplicationController
  def index
    @repos = Repo.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
