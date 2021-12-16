//
//  RecipeTabView.swift
//  Recipes
//
//  Created by PM JavaScript - Ja'kobe Stumon on 11/10/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
      
        TabView {
            
            //Text("Nothing to See Here" )
               
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        .environmentObject(RecipeModel())
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
