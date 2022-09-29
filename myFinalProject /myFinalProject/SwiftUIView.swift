//
//  SwiftUIView.swift
//  myFinalProject
//
//  Created by Ali Al-Otaibi on 24/09/2022.
//

import SwiftUI

struct HabitModes {
    
}


struct SwiftUIView: View {
    let style = LinearGradient(
        colors: [Color.blue, Color.white],
        startPoint: .top, endPoint: .bottom)
    @State var user = [" Go to the Gym",  "Go to University"]
    @State var new = ""
    @State var emoji = "person.fill.checkmark"
    @State  var click = false
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack {
                    List(user, id: \.self) { use in
                        Section(header: Text("Habit")) {
                            HStack {
                                Text(use)
                                Image(systemName: emoji).foregroundColor(.green)
                                    .onTapGesture {
                                        if emoji == "person.fill.checkmark" {
                                            emoji = "person.fill"
                                        }
                                        else {
                                            emoji = "person.fill.checkmark"
                                        }
                                        
                                        withAnimation (.linear(duration: 0.20)){
                                            click.toggle()
                                            
                                        }
                                    
                                        
                                        
                                    }
                                    .navigationTitle("To do List")
                                    
                            }
                        }
                        
                    }
                    
                    HStack {
                        Button   {
                            user.append(new)
                        } label: {
                            Image(systemName: "plus.square.fill")
                                .font(.system(size:30)).clipShape(Circle()).foregroundColor(.green)
                            
                        }
                        TextField("Add your habits", text: $new)
                        Button {
                            user.remove(at: 0)
                        } label : {
                            Image(systemName: "minus.square.fill")
                                .font(.system(size:30)).foregroundColor(.red)
                            
                        }
                        Button {
                            user.removeAll()
                        } label : {
                            Image(systemName: "trash.fill")
                                .font(.system(size:30)).foregroundColor(.gray)
                            
                        }
                    }
                }
            }
            
            
        }
    }
}
    
    
    
    
    
    
    
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView()
        }
            
    }
