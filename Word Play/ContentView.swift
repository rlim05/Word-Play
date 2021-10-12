//
//  ContentView.swift
//  Word Play
//
//  Created by Ryan Lim on 10/6/21.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {    
        VStack {
            Text("Please enter the requested words below")
            HStack {
                CustomTextField(placeholder: "Adjective", variable: $words.adjective0)
            }
            HStack {
                CustomTextField(placeholder: "Adjective", variable: $words.adjective1)
                CustomTextField(placeholder: "Type of Bird", variable: $words.typeOfBird)
                CustomTextField(placeholder: "Room in a House", variable: $words.roomInAHouse)
            }
            HStack {
                CustomTextField(placeholder: "Verb (Past Tense)", variable: $words.verbPastTense)
                CustomTextField(placeholder: "Verb", variable: $words.verb)
            }
            HStack {
                CustomTextField(placeholder: "Relative's Name", variable: $words.relativesName)
                CustomTextField(placeholder: "Noun", variable: $words.noun0)
            }
            HStack{
                CustomTextField(placeholder: "A Liquid", variable: $words.aLiquid)
                CustomTextField(placeholder: "Verb Ending in -ing", variable: $words.verbEndingInING0)
            }
            HStack {
                CustomTextField(placeholder: "Part of the Body (Plural)", variable: $words.partOfTheBodyPlural)
            }
            HStack {
                CustomTextField(placeholder: "Plural Noun", variable: $words.pluralNoun)
                CustomTextField(placeholder: "Verb Ending in -ing", variable: $words.verbEndingInING1)
                CustomTextField(placeholder: "Noun", variable: $words.noun1)
            }
            Spacer()
            NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Words {
    var adjective0 = ""
    
    var adjective1 = ""
    var typeOfBird = ""
    var roomInAHouse = ""
    
    var verbPastTense = ""
    var verb = ""
    
    var relativesName = ""
    var noun0 = ""
    
    var aLiquid = ""
    var verbEndingInING0 = ""
    
    var partOfTheBodyPlural = ""
    
    var pluralNoun = ""
    var verbEndingInING1 = ""
    var noun1 = ""
}
struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
