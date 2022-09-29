//
//  ExerciseUI.swift
//  myFinalProject
//
//  Created by Ali Al-Otaibi on 24/09/2022.
//

import SwiftUI

struct Exercises {
    var name: String
    var sets: Int
    var reps: Int
}
struct ExerciseUI: View {
    let style = LinearGradient(
        colors: [Color.teal, Color.white],
        startPoint: .top, endPoint: .bottom)
    @State var exercises = ["Chest Press", "Crunch Machine", "Deadlift"]
    @State var text = ""
    @State var emoji = "dumbbell.fill"
    @State var tap = false
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    
                    List (exercises, id: \.self) { workout in
                        Section(header: Text("Workout")) {
                            HStack {
                                Text(workout)
                                Image(systemName: emoji).foregroundColor(.red)
                                    .onTapGesture {
                                        if emoji == "dumbbell.fill" {
                                            emoji = "x.square.fill"
                                        }
                                        else {
                                            emoji = "dumbbell.fill"
                                        }
                                        withAnimation (.linear(duration: 0.20)){
                                            tap.toggle()
                                            
                                        }
                                    }
                                    .navigationTitle("Workout Schedule")
                            }
                        }
                        
                    }
                    
                    HStack {
                        Button {
                            exercises.append(text)
                        } label: {
                            Image(systemName:"plus.square.fill").font(.system(size:30)).foregroundColor(.green)
                        }
                        TextField("Enter your exercises....",text:$text)
                        
                        Button {
                            exercises.remove(at: 0)
                        } label: {
                            Image(systemName:"minus.square.fill").font(.system(size:30)).foregroundColor(.red)
                        }
                        
                        Button {
                            exercises.removeAll()
                        } label: {
                            Image(systemName:"trash.fill").font(.system(size:30)).foregroundColor(.gray)
                        }
                        
                        
                        
                        
                        
                    }
                }
                
                
                
            }
            
            
            
            
            
            
        }
        
        
    }
}
    
    struct ExerciseUI_Previews: PreviewProvider {
        static var previews: some View {
            ExerciseUI()
        }
    }
    

