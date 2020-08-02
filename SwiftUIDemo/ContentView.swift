//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by godofcode on 7/03/20.
//  Copyright © 2020 godofcode. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var name : String = ""
    @State var phoneNumber : String = ""
    @State var isActive: Bool = true
    @State var notificationEnable: Bool = false
    @State var indexPicker = 0
    var optionPicker = ["Always", "While Using", "When Unlocked", "Never"]
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("User Information")){
                    TextField("Name", text: $name)
                    TextField("Phone Number", text: $phoneNumber)
                    Toggle(isOn: $isActive) {
                        Text("Account is Active")
                    }
                }
                Section(header: Text("Notification")) {
                    Toggle(isOn: $notificationEnable) {
                        Text("Enabled")
                    }
                    Picker(selection: $indexPicker , label: Text("Previews")) {
                        ForEach(0 ..< optionPicker.count){
                            Text(self.optionPicker[$0])
                        }
                        
                    }
                }
                
                Section(header: Text("About")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.0.1")
                    }
                }
                
                Section(header: Text("Reset Data")){
                    Button(action: {
                        print("action execute")
                    }) {
                        Text("Reset All Cache")
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
