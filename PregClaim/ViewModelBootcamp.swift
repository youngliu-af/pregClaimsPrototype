//
//  ViewModelBootcamp.swift
//  PregClaim
//
//  Created by Young Liu on 5/31/22.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
}

// where the data lives
struct ViewModelBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
