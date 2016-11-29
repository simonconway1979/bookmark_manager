require './app/models/link'


describe Link do

subject(:link) {described_class.new}

  it 'should respond to name' do
    expect(link).to respond_to(:id)
  end



end
