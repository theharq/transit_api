require 'spec_helper'

describe Route, "Relations" do
  it { should have_many :trips }
  it { should belong_to :agency }
end
