//
//  Character.swift
//  Project-3
//
//  Created by Neko on 01/05/2020.
//  Copyright © 2020 Neko. All rights reserved.
//

import Foundation

//MARK: Création de la classe Characters pour les Joueurs puissent choisir les personnages.

class Characters {
    var lifePoint: Int // PV du personnages
    var name: String // Nom du personnage choisi par le joueur
    let weapon: Weapon //armes attribuées aux personnages
    
    init(lifePoint: Int, name: String, weapon: Weapon) {
        self.lifePoint = lifePoint
        self.name = name
        self.weapon = weapon
    }
    
    func heal(character: Characters) {
        character.lifePoint += 15
    }//le personnage attribue des points en plus à ses coéquipiers lorsque que le joueur choisi de soigner sa team
    
    func attack(character: Characters) {
        
    } //le personnage attaque en utilisant son arme, celle-ci est associée à des dommages qui impactera l'adversaire, qui enlèvera des points de vie à l'adversaire.
    
    func isDead() -> Bool {
       return lifePoint <= 0
    }//Si les PV du personnage tombe à 0 alors il est mort et ne peut plus être utilisé.
}

//MARK: Création des classes des différents personnages que les joueurs pourront choisir, avec leurs propres caractériques (Armes, Noms, PV)

