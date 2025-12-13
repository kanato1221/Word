//
//  ContentView.swift
//  word
//
//  Created by 松井奏人 on 2025/11/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            VStack(spacing: 32){
                Text("My単語帳")
                    .font(.largeTitle)
                
                NavigationLink{
                    QuizView()
                }label:{
                    Text("Quizstart")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding(.vertical ,12)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .clipShape(.capsule)
                }
                NavigationLink{
                    WordListView()
                }label:{
                    Text("単語帳")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding(.vertical ,12)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .clipShape(.capsule)
                }
            }
            .padding(.horizontal, 60)
        }
    }
}

#Preview {
    ContentView()
}
