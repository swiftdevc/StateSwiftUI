//
//  ContentView.swift
//  StateSwiftUI
//
//  Created by Hasan PC on 9.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State var value : Int = 0
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
                            .foregroundColor(Color.green)
                    }
                    
                    Text(String(value))
                        .padding(.horizontal)
                        .fontWeight(.heavy)
                    
                    Button {
                        if value >= 1 {
                            value -= 1
                        }
                    } label: {
                        Image(systemName: "minus")
                            .foregroundColor(Color.red)
                    }
                }.padding(.vertical)
   
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
