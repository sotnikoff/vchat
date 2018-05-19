module ConvertTextToSpeech
  extend self
  def call(text, voice_id, format)
    creds = Rails.application.credentials.aws
    client = Aws::Polly::Client.new(region: creds[:region],
                                    access_key_id: creds[:access_key_id],
                                    secret_access_key: creds[:secret_access_key]
    )
    client.synthesize_speech(text: text,
                             output_format: format,
                             voice_id: voice_id,
                             text_type: 'text'
    )
  end
end
