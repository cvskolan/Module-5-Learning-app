//
//  HomeViewRow.swift
//  Learning app
//
//  Created by ab86008 on 2022-06-16.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var category: String
    var description: String
    var number: String
    var time: String
    
    var body: some View {
        
        
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 325, height: 175), contentMode: .fit)
               

            HStack {
                
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                
                Spacer()
                
                VStack (alignment: .leading, spacing: 10) {
                    
                    Text(category)
                        .bold()
                    
                    Text(description)
                        .padding(.bottom, 20)
                    
                    HStack {
                        Image (systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(number)
                            .font(.caption)
                        
                        
                        Image (systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(time)
                            .font(.caption)
                    }
                }
                
            }
            .padding(.horizontal, 20)
        }
        
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", category: "Learn Swift", description: "Description", number: "10 lessons", time: "2 hours")
    }
}
