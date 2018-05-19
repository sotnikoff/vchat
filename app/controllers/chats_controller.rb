class ChatsController < ApplicationController
  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      redirect_to chat_path(@chat)
    else
      render 'index'
    end
  end

  def show
    @chat = Chat.find(params[:id])
    @message = Message.new(chat: @chat)
  end

  def index
    @chat = Chat.new
  end

  private

  def chat_params
    params.require(:chat).permit(:title)
  end
end
