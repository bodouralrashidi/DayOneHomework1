//
//  WeatherForecast.swift
//  DayOneHomework1
//
//  Created by Bodour Alrashidi on 5/4/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//
//  WeatherForecast.swift
//  DayOneHomework1
//
//  Created by Bodour Alrashidi on 5/4/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct WeatherForecast: View {
    var day = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday","Monday","Tuesday",]
     var temp = ["10","13","9","5","0","-7","13","9","5"]
      var icons = ["cloud.hail","cloud.snow","cloud.sun","snow","wind.snow","snow","cloud.hail","cloud.snow","cloud.sun"]
    var body: some View {
        ZStack{
            Image("b")
            .resizable()
            
            VStack{
                
                VStack{
                Text("Kuwait").modifier(weatherLayout(font1: .largeTitle))
                     
                Text("Mosty Clear").modifier(weatherLayout())
                HStack{
                Text("22")
                    .foregroundColor(.white)
                    .font(.system(size: 80))
                    Text("O").modifier(weatherLayout())
                        .offset(y : -20)
                    }}.padding()
                HStack{
                HStack{
                    Text("Sunday").modifier(weatherLayout()).content.bold().foregroundColor(.white)
                    Text("Today").modifier(weatherLayout())
                }.offset(x:-90)
               HStack{
                   Text("31")
                   Text("24")
                }.offset(x:90).modifier(weatherLayout())
                
                }.padding()
                ScrollView(.horizontal){
                HStack ( spacing: 18)
                {
                    Text("Now")
                        .bold()
                     Text("12pm")
                    .bold()
                     Text("1PM")
                    .bold()
                     Text("2PM")
                    .bold()
                    Text("3PM")
                    .bold()
                     Text("4PM")
                    .bold()
                    Text("5PM")
                    .bold()
                     
                    }.foregroundColor(.white)
                HStack ( spacing: 34)
                {
                    Image(systemName: "cloud.rain")
                    Image(systemName: "cloud.drizzle.fill")
                       Image(systemName: "cloud.sleet")
                       Image(systemName: "cloud.sun.bolt")
                    Image(systemName: "cloud.snow.fill")
                       Image(systemName: "snow")
                
                       Image(systemName: "sunset.fill")
                    
                    
                    
                }.foregroundColor(.white) .padding()
                HStack (spacing : 35){
                Text("22")
                    .bold()
                    
                 Text("19")
                .bold()
                 Text("18")
                .bold()
                 Text("20")
                .bold()
                Text("-7")
                .bold()
                 Text("10")
                .bold()
                Text("0")
                .bold()
                 
                }.foregroundColor(.white)
                }
                ScrollView(.vertical)
                          {
                            HStack(spacing: 90){
                              VStack(spacing:30)
                              {
                                  ForEach(self.day,id: \.self)
                                  {day in
                                    Text("\(day)")
                                          .foregroundColor(.white)
                                    .bold()
                                    
                                  }
                                }
                                VStack(spacing:37){
                                    ForEach(self.icons,id: \.self)
                                    {icons in
                                       Image(systemName: icons)
                                            .foregroundColor(.white)
                                      
                                      
                                    }
                                }.padding(20).offset(x:10)
                                VStack(spacing:29){
                                                                   ForEach(self.temp,id: \.self)
                                                                   {temp in
                                            Text("\(temp)")
                                                                                                    .foregroundColor(.white)
                                                                                              .bold()
                                                                                              
                                    }}  }
                    }
                }
            
          
           
                
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct WeatherForecast_Previews: PreviewProvider {
    static var previews: some View {
        WeatherForecast()
    }
}
struct weatherLayout : ViewModifier {
    var font1 = Font.body
    func body(content: Content) -> some View {
    content
        .foregroundColor(.white)
        .font(font1)
       
    }}
