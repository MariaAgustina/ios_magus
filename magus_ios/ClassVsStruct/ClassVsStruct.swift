//
//  ClassVsStruct.swift
//  magus_ios
//
//  Created by Maria Agustina Markosich on 28/06/2022.
//

import UIKit

//lesson 2: stored properties, computed properties, and methods

// Because structures are value types—unlike classes—local changes to a structure aren’t visible to the rest of your app unless you intentionally communicate those changes as part of the flow of your app.
// Classes in Swift come with a built-in notion of identity because they’re reference types. This means that when two different class instances have the same value for each of their stored properties, they’re still considered to be different by the identity operator (===).

class SongClass: NSObject {
    var title: String

    init(title: String) {
        self.title = title
    }

    static func == (lhs: SongClass, rhs: SongClass) -> Bool {
        return lhs.title == rhs.title
    }
}

struct SongStruct: Equatable {
    var title: String
}

class ClassVsStruct: NSObject {

    func classSample() {
        let song = SongClass(title: "Oh! Darling")

        let otherSong = song
        otherSong.title = "Let it be"

        print(otherSong.title) //Let it be
        print(song.title) //Let it be
    }

    func structSample() {
        let song = SongStruct(title: "Oh! Darling")

        var otherSong = song
        otherSong.title = "Let it be"

        print(otherSong.title) //Let it be
        print(song.title) //Oh! Darling

    }

}
