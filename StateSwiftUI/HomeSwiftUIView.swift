//
//  HomeSwiftUIView.swift
//  StateSwiftUI
//
//  Created by Hasan PC on 9.08.2023.
//

import SwiftUI

struct HomeSwiftUIView: View {
    var ageArray = [23,4,6,5,78,12,65,98,120,1,12,65,98,120,1,65,98,120]
    var body: some View {
        // basic usage of list
        /*
        List(ageArray, id: \.self) { age in
            Text(String(age))
        }
         */
        // using with foreach loop
        List{
            ForEach(ageArray, id: \.self) { age in
                Text(String(age))
            }
        }
    }
}

struct HomeSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSwiftUIView()
    }
}
