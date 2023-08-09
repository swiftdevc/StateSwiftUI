//
//  ContentView.swift
//  StateSwiftUI
//
//  Created by Hasan PC on 9.08.2023.
//

import SwiftUI

struct ContentView: View {
    // basic usage of state
    @State var value : Int = 0
    @State var isPresented = false
    var body: some View {
        NavigationView{
            VStack {
                
                HStack{
                    Button {
                        if value >= 0 {
                            value += 1
                        }
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(Color.green).font(.headline)
                    }
                    
                    Text(String(value))
                        .padding(.horizontal)
                        .fontWeight(.bold)
                        .font(.title)
                    
                    Button {
                        if value >= 1 {
                            value -= 1
                        }
                    } label: {
                        Image(systemName: "minus")
                            .foregroundColor(Color.red).font(.headline)
                    }
                }.padding(.vertical)
                
                // sheet usage
                
                Button {
                    if value == 10 {
                        isPresented = true
                    }
                } label: {
                    Text("Home")
                        .foregroundColor(Color.red)
                        .font(.title)
                }.sheet(isPresented: $isPresented) {
                    HomeSwiftUIView()
                }

            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
