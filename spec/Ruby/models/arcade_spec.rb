require 'rails_helper'

RSpec.describe Arcade, type: :arcade do

  it { should have_valid(:name).when('name') }
  it { should_not have_valid(:name).when(nil) }
  it { should have_valid(:street1).when('123 broad st') }
  it { should_not have_valid(:street1).when(nil) }
  it { should have_valid(:street2).when(nil) }
  it { should_not have_valid(:city).when(nil) }
  it { should have_valid(:city).when('Philadelphia') }
  it { should_not have_valid(:state).when(nil) }
  it { should have_valid(:state).when('PA') }
end
