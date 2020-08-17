require "pry"
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def player_helper
  h1 = game_hash[:home][:players]
  h2 = game_hash[:away][:players]
  whole_array = (h1 + h2)
  player_hash = { }
  whole_array.each_with_index do |player_set, index|
    name_as_key = player_set[:player_name]
    player_hash[name_as_key] = player_set
end
player_hash
end

def team_helper(team_name)
game_hash.each_with_object( { } ) do | (location, team) , new_game_hash |
team.each do   | attributes, value |
game_hash[location][:players].each do |player|

if !new_game_hash[location]
new_game_hash[location] = { }
end
if !new_game_hash[location][team_name]
new_game_hash[location][team_name] [:players] = { }
end
end
end
end
end



# def team_helper
#   player_hash = { }
#   team_hash = { }
#   game_hash.each do |location, attributes|
#     attributes.each do |key, value|
#       # if game_hash
#       game_hash[location][:players].each_with_index do |player_set, index|
#         team_key = game_hash[location][key]
#         name_as_key = player_set[:player_name]
#         player_hash[name_as_key] = player_set
#         # binding.pry
#         team_hash[team_key] = player_hash
#       end
#     end
#   end
#   team_hash
# end
# binding.pry
        

def num_points_scored(player_name)
  player_helper[player_name][:points]
end

def shoe_size(player_name)
  player_helper[player_name][:shoe]
end

def team_colors(team_name)
rainbow = "nope" 
game_hash.each do |location, attributes|
  attributes.each do |key, value|
	if game_hash[location][key] == team_name
		 rainbow = game_hash[location][:colors]
		end
end
end
rainbow
end

def team_names
  new_array = [ ]
new_array << game_hash[:home][:team_name]
new_array << game_hash[:away][:team_name]
new_array
end

def player_numbers(team_name)
  jersey = [ ]
  game_hash.each do |location, attributes|
    if team_name == attributes[:team_name]
      binding.pry
      attributes.each do |key, value|
    if key == :players
      binding.pry 
      value.each do |num|
        jersey << num
        binding.each
  # find = team_helper
  # find[team_name].each do |name, stats|
  # jersey << find[team_name][name][:number]
        end
      end
    end
      end
  end
  jersey
end

def player_stats(player_name)
  player_helper[player_name]
end

def big_shoe_rebounds
  shoes = [ ]
  rebounds = "Hurray!"
  player_helper.each do | a, b |
  # b.map { |facts, stats| [:shoe] }
     shoes << player_helper[a][:shoe]
     if player_helper[a][:shoe] == shoes.sort.max
      rebounds = player_helper[a][:rebounds]
     end
# binding.pry
end
rebounds
end
  
  # team_helper(team_name).value? find_all{[:numbers]}
  # game_hash.each do |location, attributes|
  #   attributes.each do |key, value|
  #     binding.pry 
  #     if game_hash[location][key] == team_name
  #       game_hash[location][:players][:number].find_all
  #     end
  #   end
  # end
# end
