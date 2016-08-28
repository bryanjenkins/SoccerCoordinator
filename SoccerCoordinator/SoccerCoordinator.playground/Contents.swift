
// Create players collection

let players: [[String: Any]] = [
  [
    "name": "Joe Smith",
    "height": 42,
    "experience": true,
    "guardian": "Jim and Jan Smith"
  ],
  [
    "name": "Jill Tanner",
    "height": 36,
    "experience": true,
    "guardian": "Clara Tanner"
  ],
  [
    "name": "Bill Bon",
    "height": 43,
    "experience": true,
    "guardian": "Sara and Jenny Bon"
  ],
  [
    "name": "Eva Gordon",
    "height": 45,
    "experience": false,
    "guardian": "Wendy and Mike Gordon"
  ],
  [
    "name": "Matt Gill",
    "height": 40,
    "experience": false,
    "guardian": "Charles and Sylvia Gill"
  ],
  [
    "name": "Kimmy Stein",
    "height": 41,
    "experience": false,
    "guardian": "Bill and Hillary Stein"
  ],
  [
    "name": "Sammy Adams",
    "height": 45,
    "experience": false,
    "guardian": "Jeff Adams"
  ],
  [
    "name": "Karl Saygan",
    "height": 42,
    "experience": true,
    "guardian": "Heather Bledsoe"
  ],
  [
    "name": "Suzane Greenberg",
    "height": 44,
    "experience": true,
    "guardian": "Henrietta Dumas"
  ],
  [
    "name": "Sal Dali",
    "height": 41,
    "experience": false,
    "guardian": "Gala Dali"
  ],
  [
    "name": "Joe Kavalier",
    "height": 39,
    "experience": false,
    "guardian": "Sam and Elaine Kavalier"
  ],
  [
    "name": "Ben Finkelstein",
    "height": 44,
    "experience": false,
    "guardian": "Aaron and Jill Finkelstein"
  ],
  [
    "name": "Diego Soto",
    "height": 41,
    "experience": true,
    "guardian": "Robin and Sarika Soto"
  ],
  [
    "name": "Chloe Alaska",
    "height": 47,
    "experience": false,
    "guardian": "David and Jamie Alaska"
  ],
  [
    "name": "Arnold Willis",
    "height": 43,
    "experience": false,
    "guardian": "Claire Willis"
  ],
  [
    "name": "Phillip Helm",
    "height": 44,
    "experience": true,
    "guardian": "Thomas Helm and Eva Jones"
  ],
  [
    "name": "Les Clay",
    "height": 42,
    "experience": true,
    "guardian": "Wynonna Brown"
  ],
  [
    "name": "Herschel Krustofski",
    "height": 45,
    "experience": true,
    "guardian": "Hyman and Rachel Krustofski"
  ]
]

// Separate Players into Experienced and Inexperienced Groups

var experiencedPlayers: [[String: Any]] = []
var unexperiencedPlayers: [[String: Any]] = []

for player in players {
  if player["experience"] as! Bool == true {
    experiencedPlayers.append(player)
  } else {
    unexperiencedPlayers.append(player)
  }
}

// Create teams

var dragons: [[String: Any]] = []
var sharks: [[String: Any]] = []
var raptors: [[String: Any]] = []

var teams = [dragons, sharks, raptors]

// Determine total players per team and experienced players per team

let playersPerTeam = players.count / teams.count
let experiencedPlayersPerTeam  = experiencedPlayers.count / teams.count

// Add experienced players to each team one by one until none are left

for experiencedPlayer in experiencedPlayers {
  if dragons.count < experiencedPlayersPerTeam {
    dragons.append(experiencedPlayer)
  } else if sharks.count < experiencedPlayersPerTeam {
    sharks.append(experiencedPlayer)
  } else if raptors.count < experiencedPlayersPerTeam {
    raptors.append(experiencedPlayer)
  }
}

// Add unexperienced players to each team one by one until none are left

for unexperiencedPlayer in unexperiencedPlayers {
  if dragons.count < playersPerTeam {
    dragons.append(unexperiencedPlayer)
  } else if sharks.count < playersPerTeam {
    sharks.append(unexperiencedPlayer)
  } else if raptors.count < playersPerTeam {
    raptors.append(unexperiencedPlayer)
  }
}

// Print welcome letters for guardians

for player in dragons {
  print("Dear \(player["guardian"] as! String),\n\nThe new season is almost here and your child, \(player["name"] as! String), has been selected to play for the Dragons!\n\nThe season starts September 15th at 1pm. We'll see you there!\n\nBest Regards,\n\nJohn Doe\nLeague Commissioner \n\n\n")
}

