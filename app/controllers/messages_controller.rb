class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if verify_recaptcha(model: @message) && @message.save
      redirect_to chat_path(@message.chat_id)
    else
      render 'errors/common', status: :bad_request
    end
  end

  private

  def message_params
    params.require(:message).permit(:text, :bot, :chat_id)
  end
end
