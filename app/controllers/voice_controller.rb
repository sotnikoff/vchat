class VoiceController < ApplicationController
  def show
    message = Message.find(params[:id])
    speech = load_speech(message)
    send_data(speech.audio_stream.read, filename: "#{Time.now}.mp3")
  end

  private

  def load_speech(message)
    ConvertTextToSpeech.call(message.text, message.bot)
  end
end
