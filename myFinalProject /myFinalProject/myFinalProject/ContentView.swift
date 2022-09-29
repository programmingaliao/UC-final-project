//
//  ContentView.swift
//  myFinalProject
//
//  Created by Ali Al-Otaibi on 24/09/2022.
//

import SwiftUI
struct Nesait: Identifiable {
    let id = UUID()
    
    
}

struct ContentView: View {
    let style = LinearGradient(
        colors: [Color.cyan, Color.white],
        startPoint: .top, endPoint: .bottom)
    @State var click = "checkmark.circle.fill"
    let quotes = ["The truth is that everyone is bored, and devotes himself to cultivating habits." , "One's dignity may be assaulted, vandalized and cruelly mocked, but it can never be taken away unless it is surrendered", "Always.... always have a plan", "“An hour of planning can save you 10 hours of doing.", "A goal without a plan is just a wish.", "Plans are nothing; planning is everything.", "If the plan doesn’t work change the plan, not the goal."]
    @State var tap = false

    var body: some View {
        NavigationView {
            ZStack {
                style.ignoresSafeArea()
                VStack {
                    
                    Text("Nesait").font(.system(size:70)).bold().italic().foregroundColor(.brown)
                    Image("nesait").resizable().scaledToFit().frame(height:200,alignment: .center).opacity(0.03)
                    Divider()
                    Text(quotes.randomElement() ?? "").foregroundColor(.gray).bold().italic().font(.system(size: 32))
                    }
                    
            
                 
                    Divider()
                    
                    ScrollView (.horizontal){
                            VStack {
                                HStack {
                                
                                
                                
                                NavigationLink(destination: SwiftUIView()) {
                                    Image(systemName: "person.fill.checkmark")
                                        .imageScale(.large)
                                        .font(.largeTitle).foregroundColor(.green)
                                    Text("To do List").bold().italic().foregroundColor(.black)
                                        
                                            }
                                        
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    Image(systemName:"dumbbell.fill").font(.largeTitle).padding().foregroundColor(.red)
                                    NavigationLink(destination: ExerciseUI()) {
                                        Text("Exercise").bold().italic().foregroundColor(.black)
                                        
                                        
                                        
                                        
                                        
                                        Image(systemName: "water.waves").font(.largeTitle).font(.largeTitle).clipShape(Circle()).foregroundColor(.teal)
                                        
                                        
                                        NavigationLink(destination: WaterIntakeUI()) {
                                            Text("Water Intake").bold().italic().foregroundColor(.black)
                                        }
                                        
                                        .padding()
                                        
                                        
                                        
                                        Image(systemName: "lightbulb.2").font(.largeTitle).clipShape(Circle()).foregroundColor(.orange)
                                        
                                        NavigationLink(destination: PomodoroUI()) {
                                            Text("Medication Reminder").bold().italic().foregroundColor(.black)
                                        }
                                        
                                    }
                                }
                            }
                            
                            
                            
                            
                        }
                    }
                    
                }
            }
        }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    
    
