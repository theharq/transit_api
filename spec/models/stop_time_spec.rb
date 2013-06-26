require 'spec_helper'

describe StopTime, "Relations" do
  it { should belong_to :trip }
  it { should belong_to :stop }
end
