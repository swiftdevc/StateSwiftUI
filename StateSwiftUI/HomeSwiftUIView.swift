//
//  HomeSwiftUIView.swift
//  StateSwiftUI
//
//  Created by Hasan PC on 9.08.2023.
//

import SwiftUI

struct HomeSwiftUIView: View {
    var ageArray = [23,4,6,5,78]
    var body: some View {
        List(ageArray, id: \.self) { age in
            Text(String(age))
        }
    }
}

struct HomeSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSwiftUIView()
    }
}
