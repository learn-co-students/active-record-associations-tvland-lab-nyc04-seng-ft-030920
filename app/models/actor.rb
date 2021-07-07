class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # peter.characters[0].name = "Tyrion Lannister"
    # peter.shows[0].name = "Game of Thrones"
    # peter.shows[0].characters = tyrion
    # "#{characters.name} - #{show.name}"

    self.shows.map { |show|
        actor = self.id
        "#{Character.find_by(actor_id: actor).name} - #{show.name}"
    }
  end

end