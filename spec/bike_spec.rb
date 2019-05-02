require 'bike'

describe Bike do
  it 'expects bikes to respond to method working' do
    expect(subject).to respond_to :working?
  end

  
end
