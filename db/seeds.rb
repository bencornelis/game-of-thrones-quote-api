# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed
  def self.begin
    seed = Seed.new
    seed.generate_characters
    seed.generate_quotes
  end

  def generate_characters
    names = seed_file['quotes'].map { |quote| quote.slice('name') }.uniq
    Character.create(names)
  end

  def generate_quotes
    seed_file['quotes'].each do |quote|
      character_id = Character.find_by(name: quote['name']).id
      Quote.create(
        character_id: character_id,
        content:      quote['content']
      )
    end
  end

  def seed_file
    @seed_file ||= load_file
  end

  def load_file
    file = File.join(Rails.root, 'db', 'seed.yml')
    YAML::load_file(file)
  end
end

Seed.begin
