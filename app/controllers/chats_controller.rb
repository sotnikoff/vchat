class ChatsController < ApplicationController
  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      redirect_to chat_path(@chat)
    else
      redirect_to root_path
    end
  end

  def show
    @chat = Chat.find(params[:id])
  end

  private

  def chat_params
    params.require(:chat).permit(:title)
  end
end
