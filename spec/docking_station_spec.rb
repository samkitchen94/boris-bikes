require 'docking_station'

describe DockingStation do
  it 'expects DockingStation to respond to release bike method' do
    expect(subject).to respond_to :release_bike
  end

  it "releases a working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end