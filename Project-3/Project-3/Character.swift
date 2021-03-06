//
//  Character.swift
//  Project-3
//
//  Created by Neko on 01/05/2020.
//  Copyright © 2020 Neko. All rights reserved.
//

import Foundation

//MARK: Creation of the Characters class for Players to choose characters.

class Characters {
    var lifePoint: Int // Point of life of the character
    var name: String // Character's name chosen by the player
    let weapon: Weapon //Weapons attributed to the characters
    
    init(lifePoint: Int, name: String, weapon: Weapon) {
        self.lifePoint = lifePoint
        self.name = name
        self.weapon = weapon
    }
    
    func heal(character: Characters) {
        character.lifePoint += 15
    }//the character awards extra points to his teammates when the player chooses to take care of his team.
    
    func attack(character: Characters) {
        character.lifePoint -= weapon.damages
    } //the character attacks using his weapon, which is associated with damage that will impact the opponent and take away health points.
    
    func isDead() -> Bool {
        return lifePoint <= 0
    }//If the character's life drops to 0 then he is dead and can no longer be used.
}

//MARK: Creation of the classes of the different characters that the players will be able to choose, with their own characters (Weapons, Names, Life Point).

class Magician: Characters {
    init(name: String) {
        super.init(lifePoint: 100, name: name, weapon: MagicWeapon())
    }
}

class Knight: Characters {
    init(name: String) {
        super.init(lifePoint: 110, name: name, weapon: SwordWeapon())
    }
}

class Berseker: Characters {
    init(name: String) {
        super.init(lifePoint: 130, name: name, weapon: BigAx())
    }
}

class Soldier: Characters {
    init(name: String) {
        super.init(lifePoint: 120, name: name, weapon: GunWeapon())
    }
}

class Assassin: Characters {
    init(name: String) {
        super.init(lifePoint: 115, name: name, weapon: DoubleKnife())
    }
}

class Archer: Characters {
    init(name: String) {
        super.init(lifePoint: 110, name: name, weapon: ArchWeapon())
    }
}
}

