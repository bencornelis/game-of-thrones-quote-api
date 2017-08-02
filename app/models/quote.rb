class Quote < ApplicationRecord
  belongs_to :character

  def self.random(count = 1)
    base_scope = includes(:character).order("RANDOM()")
    count == 1 ? base_scope.first : base_scope.limit(count)
  end
end
