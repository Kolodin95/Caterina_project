class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @items = Item.all
  end


  def display_show

  end
end
