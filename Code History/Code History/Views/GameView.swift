//
//  ContentView.swift
//  Code History
//
//  Created by Ali on 07/01/24.
//

import SwiftUI

struct GameView: View {
    let question = Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2)
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundStyle(.white)
        .environmentObject(viewModel)
        .navigationBarHidden(true)
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                                                                            incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: { EmptyView() })
        )
    }
}

#Preview {
    GameView()
}
