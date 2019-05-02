require 'docking_station'

describe DockingStation do
  it 'expects DockingStation to respond to release bike method' do
    expect(subject).to respond_to :release_bike
  end

  it "releases a working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "allows user to dock bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "is expected to respond to docking station" do
    expect(subject).to respond_to :bike
  end

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end
end
