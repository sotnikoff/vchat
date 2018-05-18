class ChatsController < ApplicationController
  def create
    @chat = Chat.new(chat_params)
    if verify_recaptcha(model: @chat) && @chat.save
      redirect_to chat_path(@chat)
    else
      redirect_to root_path
    end
  end

  def show
    @chat = Chat.find(params[:id])
    @message = Message.new(chat: @chat)
  end

  private

  def chat_params
    params.require(:chat).permit(:title)
  end
end
