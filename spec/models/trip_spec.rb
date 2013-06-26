require 'spec_helper'

describe Trip, "Relations" do
  it { should belong_to :route }
  it { should belong_to :calendar }
end
