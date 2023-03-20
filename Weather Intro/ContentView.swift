//
//  ContentView.swift
//  Weather Intro
//
//  Created by Sarthak Shrivastava on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack{
                CityView(cityName: "Cupertino, CA")
                
                WeatherView(imageName: isNight ? "cloud.moon.fill" : "cloud.sun.fill", temp: isNight ? 34 : 37)
                
                HStack(spacing: 25){
                    
                    DaysWeekView(day: "TUE", image: isNight ? "moon.fill" : "sun.max.fill", temp: isNight ? 35 : 38)
                    DaysWeekView(day: "WED", image: isNight ? "moon.haze.fill" : "sun.haze.fill", temp: isNight ? 34 : 37)
                    DaysWeekView(day: "THU", image: isNight ? "cloud.moon.rain.fill" : "wind", temp: isNight ? 30 : 32)
                    DaysWeekView(day: "FRI", image: isNight ? "tornado" : "tornado", temp: isNight ? 28 : 30)
                    DaysWeekView(day: "SAT", image: isNight ? "wind.snow" : "snowflake", temp: isNight ? 20 : 24)
                    
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                }label:{
                    weatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
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

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue
                                ,isNight ? .gray : Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct CityView: View{
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium ,design: .default))
            .foregroundColor(.white)
            .padding()
        
    }
}

struct WeatherView: View{
    
    var imageName: String
    var temp: Int
    
    var body: some View{
            VStack(spacing:10){
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180,height: 180)
                
                Text("\(temp)°")
                    .font(.system(size: 70,weight: .medium))
                    .foregroundColor(.white)
            }
            .padding(.bottom,40)
    }
}


