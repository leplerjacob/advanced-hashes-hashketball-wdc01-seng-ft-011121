# Write your code below game_hash
require 'pry'

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

def num_points_scored(player_name)
  points = nil
  game_hash.each{|outer_k, outer_v|
      outer_v.each{|inner_k, inner_v|
        if inner_k == :players
          inner_v.each{|player|
            if player[:player_name] == player_name
              points = player[:points]
            end
            # binding.pry
          }
        end
        # binding.pry
      }
    # binding.pry
  }
  # binding.pry
  points
end

def shoe_size(player_name)
  # returns the shoe size of the given player
  shoe_size = nil
  game_hash.each{|outer_k, outer_v|
      outer_v.each{|inner_k, inner_v|
        if inner_k == :players
          inner_v.each{|player|
            if player[:player_name] == player_name
              shoe_size = player[:shoe]
              
              # binding.pry
            end
            # binding.pry
          }
        end
        # binding.pry
      }
    # binding.pry
  }
  
    shoe_size
end


def team_colors(team_name)
  # returns the team colors
  team_colors = nil
  game_hash.each{|outer_k, outer_v|
      if outer_v[:team_name] == team_name
        team_colors = outer_v[:colors]
      end
    # binding.pry
  }
  # binding.pry
  team_colors
end


def team_names
  # returns the team names
  team_names = []
  game_hash.each{|outer_k, outer_v|
    team_names.push(outer_v[:team_name])
  }
  team_names
end
def player_numbers(player_name)
  # returns the jersey number of the given player
  
  player_numbers = []
  game_hash.each{|outer_k, outer_v|
      outer_v.each{|inner_k, inner_v|
        binding.pry
      }
    # binding.pry
  }
  player_numbers
  
end
def player_stats(player_name)
  # returns the player stats of the given name
  
end
def big_shoe_rebounds(player_name)
  # returns number of rebounds of the player with the biggest shoe size
  
end


























