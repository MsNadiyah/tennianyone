class Player
  include Mongoid::Document

  field :blurb, type: String # Text box
  field :level, type: String
  field :type_of_play, type: String # singles, doubles, drills, hitting
  field :availability, type: String # Weekday AM, Weekday PM, Weekdays, Weekend AM, Weekend PM, Weekends
  field :secret_weapon, type: String # Forehand, Backhand, Groundstrokes, Serve, Net Game, Spin, Fitness/Endurance, Game strategy
  field :goal, type: String # Forehand, Backhand, Groundstrokes, Serve, Net game, Spin, Fitness/Endrance, Game strategy 
  field :interest_lessons, type: Boolean 
  field :interest_league, type: Boolean

  # Relationships

  embedded_in :user

end
