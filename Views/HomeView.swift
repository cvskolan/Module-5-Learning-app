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
        
        NavigationView {
            
            VStack (alignment: .leading, spacing: 20){
                
                Text("What du you want to do")
                    .padding(.leading, 20)
                
                ScrollView {
                    LazyVStack{
                        ForEach(model.modules) {module in
                            
                            VStack (spacing: 20){
                                
                                NavigationLink {
                                    ContentView()
                                        .onAppear {
                                            model.beginModule(module.id)
                                        }
                                } label: {
                                   
                                    HomeViewRow(image: module.content.image, category: module.category, description: module.content.description, number: String(module.content.lessons.count) + " lessons", time: module.content.time)
                                    
                                    
                                    
                                }
                                
                                
                                
                                
                                
                                HomeViewRow(image: module.test.image, category: "\(module.category) Test", description: module.test.description, number: String(module.test.questions.count) + " questions", time: module.test.time)
                            }
                            
                        }
                    }
                    .accentColor(.black)
                }.padding()
            }.navigationTitle("Get started")
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
