# Write your code below game_hash
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

# Write code here
def all_players
  game_hash[:home][:players] + game_hash[:away][:players]
end

def correct_player name
  all_players.find {|player| player[:player_name] == name}
end

def num_points_scored name
 correct_player(name)[:points]
end

# puts num_points_scored("Jeff Adrien")

def shoe_size name
  shoe = correct_player(name)[:shoe]
end

# puts shoe_size ("Kemba Walker")

def all_teams
  teams = []
  teams << game_hash[:home]
  teams << game_hash[:away]
  teams
end

def team_colors team_name
  correct_team = all_teams.find {|team| team[:team_name]  == team_name}
  correct_team[:colors]
end

# puts team_colors ('Brooklyn Nets')

def team_names
  game_hash.map {|home_away, team_info| team_info[:team_name]}
end

def player_numbers team_name
  nums = []
  correct_team = all_teams.find {|team| team[:team_name]  == team_name}
  correct_team[:players].each {|player| nums << player[:number]}
  nums
end

# p player_numbers("Brooklyn Nets")

def player_stats name
  correct_player name
end

# p player_stats('Kemba Walker')

def big_shoe_rebounds 
  players = []
  all_players.each {|player| players << player[:shoe]}
  biggest_shoe =all_players.find {|player| player[:shoe]== players.max}
  biggest_shoe[:rebounds]
end

