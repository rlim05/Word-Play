//
//  StoryView.swift
//  Word Play
//
//  Created by Ryan Lim on 10/6/21.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
    }
    func writeStory() -> String {
        return "It was a \(words.adjective0), cold November day. " +
        "I woke up to the \(words.adjective1) smell of \(words.typeOfBird). " +
        "I \(words.verbPastTense) down the stairs to see if I could help \(words.verb) the dinner. " +
        "My mom said, 'See if \(words.relativesName) needs a fresh \(words.noun0).' " +
        "So I carried a tray of glasses full of \(words.aLiquid) into the \(words.verbEndingInING0) room. " +
        "When I got there, I couldn't believe my \(words.partOfTheBodyPlural)! " +
        "There were \(words.pluralNoun) \(words.verbEndingInING1) on the \(words.noun1)."
        }
    }


struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
