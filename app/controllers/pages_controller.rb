class PagesController < ApplicationController
  def index
    @chat = Chat.new
  end
end
