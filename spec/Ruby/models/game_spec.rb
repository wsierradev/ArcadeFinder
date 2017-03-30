require 'rails_helper'

RSpec.describe Game, type: :game do

  it { should have_valid(:name).when('name') }
  it { should_not have_valid(:name).when(nil) }
  it { should have_valid(:working).when(true) }
  it { should have_valid(:working).when(false) }
  it { should_not have_valid(:working).when(nil) }
  it { should have_valid(:quantity).when(1) }
  it { should_not have_valid(:quantity).when(nil) }
end
