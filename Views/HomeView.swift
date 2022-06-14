//
//  ContentView.swift
//  Learning app
//
//  Created by ab86008 on 2022-06-14.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        
        Text("Hello, world!")
            .padding()
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
