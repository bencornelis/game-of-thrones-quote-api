require "rails_helper"

describe Quote, type: :model do
  it { should belong_to :character }
end
