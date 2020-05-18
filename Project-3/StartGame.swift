//
//  StartGame.swift
//  Project-3
//
//  Created by Neko on 01/05/2020.
//  Copyright © 2020 Neko. All rights reserved.
//

import Foundation

//Creation of the Game class for the course of the game: Game rules, choice of characters and player actions.
class Game {
    var player1: Player?
    var player2: Player?
    var name: String?
    var char: [Characters] = []
    
//Déroulement du jeu
    func newGame() {
        rulesGame()
        
        player1 = createPlayer()
        player2 = createPlayer()
        
        playGame()
        displayStat()
    }
    
//Game rules
    func rulesGame() {
        print("Welcome to Fight Warrior. Build your team and choose only 3 characters. Players play turn by turn until the loser! Let the game start!")
    }
    
//Method where the Player can choose his 3 Characters.
    func addCharacter(character: Characters) {
        char.append(character)
    }
    
//Creation of each player's team.
    func createPlayer() -> Player { //Asking to the player to enter the character's name
        print("Enter your name")
        if let playerName = readLine() {
            self.name = playerName
            print("All right \(self.name ?? "")!")
        }
        
        let player = Player(name: name!)
        
//        while !player.isTeamFull() { //The player selects a character and gives it a name.
//            player.addCharacter(character: createCharacter())
//        }
        return player
    }
    
//le joueur doit pouvoir choisir son personnage pour attaquer l'adversaire.
    func attackCharacter(player: Player) -> Characters {
        print("Choose your character to fight")
        player.displayTeam()
        return player.characters[0]
    }
    
//Players play turn by turn until the loser. Cette méthode indique quel joueur doit jouer, il sélectionne son character, puis sélectionner le character adverse qui subira l'attaque, ainsi de suite jusqu'au perdant. Return du nombre de tour.
    
    func playGame() {
        var currentPlayer = player1!
        var notPlaying = player2!
        
        while !player1!.hasLost() || !player2!.hasLost() {
           let selectedCharacter = attackCharacter(player: currentPlayer)
            let characterAttack = attackCharacter(player: notPlaying)
            
            selectedCharacter.attack(character: characterAttack) //ajouter une print pour indiquer quel perso a été attaqué
            
            if currentPlayer === player1! {
                currentPlayer = player2!
                notPlaying = player1!
            } else {
                currentPlayer = player1!
                notPlaying = player2!
            }
        }
    }
    
//Methods indicating endgame statistics.
    func displayStat() {
        player1?.displayStats()
        player2?.displayStats()
    }
}
