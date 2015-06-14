class LinksController < ApplicationController

  def index
    @links = Link.all.order_by(created_at: :DESC)
  end

  def new

  end

  def create

  end

end
