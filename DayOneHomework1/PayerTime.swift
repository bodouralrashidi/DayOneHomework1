//
//  PayerTime.swift
//  DayOneHomework1
//
//  Created by Bodour Alrashidi on 5/4/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//
import SwiftUI
struct PayerTime: View {
    var prayer = ["الفجر","الظهر","العصر","المغرب"," العشاء"]
    var time = ["3:37 am","11:46am","3:21 pm","6:27 pm","7:52 pm"]
    var colour = ["blue","black","red"]
    @State var rand  = Color("")
    var body: some View {
        
        ZStack{
            Color("\(rand)")
            VStack{
                HStack(spacing:300){
                    Image(systemName: "timer").scaleEffect(2)
                    Image(systemName: "lightbulb").scaleEffect(2)
                    
                    
                }.foregroundColor(.white) .offset(y:-200)
                Text("02:41")
   .font(.system(size: 50))
                    .foregroundColor(.white)
                Text("مضى على الاذان")
                //  Spacer(minLength: -100)
                HStack( spacing: 115
                ){
                    Text("<")
                    Text("٤ مايو - ١١ رمضان")
                    Text(">")
                }.background(Color(.white).opacity(0.5))
                
                
                ScrollView{
                    HStack(spacing : 260){
                        VStack(spacing : 40){
                            ForEach(self.time,id: \.self)
                            {time in
                                HStack(spacing:30) {
                                    Text("\(time)")
                                        .foregroundColor(.black)} }}
                            VStack(spacing : 40){
                                  ForEach(self.prayer,id: \.self)
                                      {prayer in
                                          HStack(spacing:30) {
                                              Text("\(prayer)")
                                                  .foregroundColor(.black)}}}
                            
                        
                    
                    }.background(Color(.white).opacity(0.5))}}.offset(y:250)
           
            
        }
        .onTapGesture {
          //  Color(.blue)
           self.rand = Color(self.colour.randomElement()!)
            Color("\(self.rand)")
                
        }
.edgesIgnoringSafeArea(.all)
    }}

struct PayerTime_Previews: PreviewProvider {
    static var previews: some View {
        PayerTime()
    }
}




