class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        # returns a list of the full names of each actor associated with the show
        # Character.find_by(show_id: 1).actor.first_name + Character.find_by(show_id: 1).actor.last_name
        show = self.id
        actors = []

        actors << "#{Character.find_by(show_id: show).actor.first_name} #{Character.find_by(show_id: show).actor.last_name}"
    end
end