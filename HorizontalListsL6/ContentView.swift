//
//  ContentView.swift
//  HorizontalListsL6
//
//  Created by Leone on 7/26/22.
//

import SwiftUI

struct ContentView: View {
    
    var items = ["apple", "orange", "potato", "tomato", "apple", "orange", "potato", "tomato", "apple", "orange", "potato", "tomato", "apple", "orange", "potato", "tomato", "apple", "orange", "potato", "tomato"]
    
    var body: some View {
        
        
        // MARK: - TabView Horizontal List
        /*
        TabView {
            ForEach(items, id: \.self) { item in
                Text(item)
                
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
         */
       
        // MARK: - LazyHGrid Style
        let row = GridItem(.fixed(50), spacing: 5, alignment: .center)
        ScrollView(.horizontal) {
            LazyHGrid(rows: [row]) {
                ForEach(items, id: \.self) { item in
                    Text(item)
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
