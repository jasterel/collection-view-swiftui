//
//  ContentView.swift
//  CollectionView
//
//  Created by Maxim on 10/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var image = [Image("apple"), Image("bananas"), Image("orange"), Image("strawberry")]
    
    let columns = [
        GridItem(.adaptive(minimum: 130))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(0..<image.count, id: \.self) { index in
                    image[index]
                        .resizable()
                        .padding(20)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: 160, maxHeight: 160)
                }
            }
            .frame(maxHeight: 350)
            .padding(.top, 20)
            .padding(.horizontal, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
