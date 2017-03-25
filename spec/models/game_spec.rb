require 'rails_helper'

RSpec.describe Game, type: :model do

  it { should have_valid(:name).when('Galaga', 'Pac-Man') }
  it { should have_valid(:quantity).when(1, 2, 4, 6, 8) }
  it { should have_valid(:working).when(true, false) }

  it { should_not have_valid(:name).when(nil) }
  it { should_not have_valid(:quantity).when(-2) }
  it { should_not have_valid(:working).when(nil) }
end
