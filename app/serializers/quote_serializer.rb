class QuoteSerializer < ActiveModel::Serializer
  attributes :quote, :character

  def quote
    object.content
  end

  def character
    object.character.name
  end
end
