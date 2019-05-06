import UIKit

// Manually entered player information in a collection
let player1: [String: String] = ["name": "Joe Smith", "height": "42", "experience": "yes", "guardians": "Jim and Jan Smith"]
let player2: [String: String] = ["name": "Jill Tanner", "height": "36", "experience": "yes", "guardians": "Clara Tanner"]
let player3: [String: String] = ["name": "Bill Bon", "height": "43", "experience": "yes", "guardians": "Sara and Jenny Bon"]
let player4: [String: String] = ["name": "Eva Gordon", "height": "45", "experience": "no", "guardians": "Wendy and Mike Gordon"]
let player5: [String: String] = ["name": "Matt Gill", "height": "40", "experience": "no", "guardians": "Charles and Sylvia Gill"]
let player6: [String: String] = ["name": "Kimmy Stein", "height": "41", "experience": "no", "guardians": "Bill and Hillary Stein"]
let player7: [String: String] = ["name": "Sammy Adams", "height": "45", "experience": "no", "guardians": "Jeff Adams"]
let player8: [String: String] = ["name": "Karl Saygan", "height": "42", "experience": "yes", "guardians": "Heather Bledsoe"]
let player9: [String: String] = ["name": "Suzane Greenberg", "height": "44", "experience": "yes", "guardians": "Henrietta Dumas"]
let player10: [String: String] = ["name": "Sal Dali", "height": "41", "experience": "no", "guardians": "Gala Dali"]
let player11: [String: String] = ["name": "Joe Kavalier", "height": "39", "experience": "no", "guardians": "Sam and Elaine Kavalier"]
let player12: [String: String] = ["name": "Ben Finkelstein", "height": "44", "experience": "no", "guardians": "Aaron and Jill Finkelstein"]
let player13: [String: String] = ["name": "Diego Soto", "height": "41", "experience": "yes", "guardians": "Robin and Sarika Soto"]
let player14: [String: String] = ["name": "Chloe Alaska", "height": "47", "experience": "no", "guardians": "David and Jamie Alaska"]
let player15: [String: String] = ["name": "Arnold Willis", "height": "43", "experience": "no", "guardians": "Claire Willis"]
let player16: [String: String] = ["name": "Phillip Helm", "height": "44", "experience": "yes", "guardians": "Thomas Helm and Eva Jones"]
let player17: [String: String] = ["name": "Les Clay", "height": "42", "experience": "yes", "guardians": "Wynonna Brown"]
let player18: [String: String] = ["name": "Herschel Krustofski", "height": "45", "experience": "yes", "guardians": "Hyman and Rachel Krustofski"]

// Input all players into 1 collection named theLeague
var theLeague: [[String: String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Iterate through theLeague and then sort/add to experience and inexperienced player collection.


func sortByExperience(player: [[String: String]]) -> (experienced: [[String: String]], inexperienced: [[String: String]]) {
  var experiencedPlayers: [[String: String]] = []
  var inexperiencedPlayers: [[String: String]] = []
  
  for player in theLeague {
    if player["experience"] == "yes" {
      experiencedPlayers.append(player)
    } else if player["experience"] == "no" {
      inexperiencedPlayers.append(player)
    }
  }
  
  return (experiencedPlayers, inexperiencedPlayers)
}

// Sort through each group and assign to 3 teams while keeping equal amount of experienced/inexperienced players.
let groups = sortByExperience(player: theLeague)

print(groups.experienced)
print(groups.inexperienced)
print(groups.experienced.count)
print(groups.inexperienced.count)

let experiencedPlayers = groups.experienced
let inexperiencedPlayers = groups.inexperienced

var teamSharks: [[String: String]] = []
var teamDragons: [[String: String]] = []
var teamRaptors: [[String: String]] = []

var teams = [teamSharks, teamDragons, teamRaptors]

func assignToTeams(players: [[String: String]]) {
  for n in 0 ..< players.count {
    if n % 3 == 0 {
      teamSharks.append(players[n])
    }
    if n % 3 == 1 {
      teamDragons.append(players[n])
    }
    if n % 3 == 2 {
      teamRaptors.append(players[n])
    }
  }
}

assignToTeams(players: experiencedPlayers)
assignToTeams(players: inexperiencedPlayers)






