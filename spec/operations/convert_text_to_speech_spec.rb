require 'rails_helper'

RSpec.describe ConvertTextToSpeech do
  describe 'Testing of return audio stream' do
    it 'returns AWS class' do
      output = ConvertTextToSpeech.call('hello!', 'Maxim')
      expect(output.audio_stream.size).to be_a_kind_of(Integer)
      expect(output.audio_stream.size).to be > 1
    end
  end
end
