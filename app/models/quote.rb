class Quote < ApplicationRecord
  belongs_to :character

  def self.random(count)
    base_scope = includes(:character).order("RANDOM()")
    count ? base_scope.limit(count) : base_scope.first
  end
end
