//
//  ContentView.swift
//  BindingState
//
//  Created by EDUARDO MEJIA on 31/03/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//
import Combine
import SwiftUI

//@State simple properties like strings, integers, and booleans
//@Observable Object complex properties like custom types sharing data in many views
//Codable, Equatable, Identifiable

class CoursesViewModel: ObservableObject {
    
    @Published var messages = "Mensajes inside Obserbale Object"
    
}

struct ContentView: View {
    @ObservedObject var coursesVM = CoursesViewModel()
    @State private var isActive: Bool = false
    var body: some View {
       NavigationView{
         Text(coursesVM.messages)
            
           VStack{
                    NavigationLink(destination: Test(), isActive:  self.$isActive){Text("")}
                    Button("Go to detail view"){
                        self.isActive = true
                        
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
