require "rails_helper"

describe Character, type: :model do
  it { should have_many :quotes }
end
