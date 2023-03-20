//
//  ContentView.swift
//  Weather Intro
//
//  Created by Sarthak Shrivastava on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium ,design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing:10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    
                    Text("36°")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom,40)
                
                HStack(spacing: 25){
                    
                    DaysWeekView(day: "TUE", image: "sun.max.fill", temp: 38)
                    DaysWeekView(day: "WED", image: "cloud.sun.fill", temp: 35)
                    DaysWeekView(day: "THU", image: "cloud.drizzle.fill", temp: 32)
                    DaysWeekView(day: "FRI", image: "cloud.sun.rain.fill", temp: 335)
                    DaysWeekView(day: "SAT", image: "wind", temp: 34)
                    
                }
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DaysWeekView: View {
    
    var day: String
    var image: String
    var temp: Int
    
    var body: some View {
        VStack{
            Text(day)
                .font(.system(size:16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(temp)°")
                .font(.system(size:28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
