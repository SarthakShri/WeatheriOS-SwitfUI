//
//  WeatherButton.swift
//  Weather Intro
//
//  Created by Sarthak Shrivastava on 20/03/23.
//

import SwiftUI

struct weatherButton: View{
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View{
        
        Text(title)
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(10)
    }
}
