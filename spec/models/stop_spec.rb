require 'spec_helper'

describe Stop, "Relations" do
  it { should have_many :stop_times }
end
