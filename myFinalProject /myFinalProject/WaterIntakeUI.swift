//
//  WaterIntakeUI.swift
//  myFinalProject
//
//  Created by Ali Al-Otaibi on 24/09/2022.
//

import SwiftUI

struct WaterIntakeUI: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    
                    
                    Image("water")
                        .resizable()
                        .scaledToFill()
                        .opacity(0.15)
                        .frame(height:150)
                    
                    
                    Text("Coming Soon").font(.system(size: 60)).bold().italic().foregroundColor(.blue)
                }
            }
            .navigationTitle("Water Intake")
        }
    }
}

struct WaterIntakeUI_Previews: PreviewProvider {
    static var previews: some View {
        WaterIntakeUI()
    }
}
