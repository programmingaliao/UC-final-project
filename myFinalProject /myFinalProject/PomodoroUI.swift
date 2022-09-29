//
//  PomodoroUI.swift
//  myFinalProject
//
//  Created by Ali Al-Otaibi on 24/09/2022.
//

import SwiftUI

struct PomodoroUI: View {
    let style = LinearGradient(
        colors: [Color.gray, Color.white],
        startPoint: .top, endPoint: .bottom)
    var body: some View {
        ZStack{
            VStack {
                Image("pillreminder")
                    .resizable()
                    .scaledToFill()
                    .opacity(0.15)
                    .frame(height:150)
                
                Text("Coming Soon").font(.system(size:50)).bold().italic().foregroundColor(.orange)
            }
            .navigationTitle("Medication Reminder")
            
        }
        
    }
}

struct PomodoroUI_Previews: PreviewProvider {
    static var previews: some View {
        PomodoroUI()
    }
}
