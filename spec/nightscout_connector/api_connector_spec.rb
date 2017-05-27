module NightscoutConnector
  describe ApiConnector do
  include ApiConnector
    describe 'entries' do
      it 'can read one value' do
        expect(entries.first).not_to be nil
      end
    end
  end
end
