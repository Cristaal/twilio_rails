require "rails_helper"

describe Address do
  it { should have_many :messages }
end
