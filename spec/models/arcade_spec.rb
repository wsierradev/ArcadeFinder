require 'rails_helper'

RSpec.describe Arcade, type: :model do

  it { should have_valid(:name).when('Barcade', 'Yestercade') }
  it { should have_valid(:street1).when(1,2,4,6,8) }
  it { should have_valid(:street2).when(nil, "Apt #2") }
  it { should have_valid(:city).when("New York City", 'Philadelphia') }
  it { should have_valid(:state).when("NY", "PA", "AL") }
  it { should have_valid(:zip).when(11111) }


  it { should_not have_valid(:name).when(nil) }
  it { should_not have_valid(:street1).when(nil) }
  it { should_not have_valid(:city).when(nil) }
  it { should_not have_valid(:state).when(nil) }
  it { should_not have_valid(:zip).when(nil) }
end
