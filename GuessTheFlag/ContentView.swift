//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by john martin on 9/9/22.
//

import SwiftUI

let MAX_QUESTIONS = 8

struct ContentView: View {
    
    @State private var errorTitle = ""
    
    @State private var showSuccess = false
    @State private var showError = false
    @State private var showEndGame = false
    
    @State private var score = 0
    @State private var totalQuestionsAnswered = 0
    
    @State private var countries = COUNTRY_CONFIGS.shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    @State var selectedCountry: Country? = nil
    
    var body: some View {
        
        ZStack {
            
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
            
                VStack (spacing: 15) {
                    VStack {

                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer].name)
                            .font(.largeTitle.weight(.thin))
                        
                    }
                    VStack (spacing: 15){
                        ForEach(0..<3) { number in
                            
                            ZStack {
                                Button {
                                    flagTapped(number)
                                } label: {
                                    Image(countries[number].name)
                                        .renderingMode(.original)
                                        .clipShape(Capsule())
                                        .shadow(radius: 5)
                                }
                                .disabled(showSuccess)
                                .zIndex(0)
                                
                            }.overlay() {
                                if showSuccess && number == correctAnswer {
                                    
                                    if let selectedCountry = selectedCountry {
                                        EmitterView(colors: selectedCountry.colors)
                                    }
                                }
                            }.zIndex(1)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.thinMaterial)
                .cornerRadius(15)
                
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                    
                Spacer()
            }
            .padding()
        }
        .alert(errorTitle, isPresented: $showError) {
            Button("Continue", action: checkGameOver)
        }
        .alert("Congrats!", isPresented: $showEndGame) {
            Button("New Game", action: startNewGame)
        } message: {
            Text("You answered \(score) out of \(MAX_QUESTIONS) correct")
        }
    }
    
    func checkGameOver() {
        if totalQuestionsAnswered == MAX_QUESTIONS {
            gameEnded()
        } else {
            askQuestion()
        }
    }
    
    func flagTapped(_ number: Int) {
        
        selectedCountry = countries[number]
        totalQuestionsAnswered = totalQuestionsAnswered + 1
        
        if number == correctAnswer {
            score = score + 1
            
            Task {
                await showSuccess()
                checkGameOver()
            }
            
        } else {
                        
            if let selectedCountryName = selectedCountry?.name {
                errorTitle = "Sorry, that is the flag for \(selectedCountryName)"
            } else {
                errorTitle = "Sorry, that is not the right answer."
            }
                        
            Task {
                await showError()
            }
        }
    }
    
    func showSuccess () async {
        showSuccess = true
        try? await Task.sleep(nanoseconds: 2_000_000_000)
    }
    
    func showError () async {
        showError = true
    }
    
    func askQuestion () {
                
        showSuccess = false
        showError = false
                
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func gameEnded() {
        showEndGame = true
    }
    
    func startNewGame () {
        showEndGame = false
        score = 0
        totalQuestionsAnswered = 0
        askQuestion()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
