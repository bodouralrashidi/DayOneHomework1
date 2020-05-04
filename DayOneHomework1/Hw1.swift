//
//  Hw1.swift
//  DayOneHomework1
//
//  Created by Bodour Alrashidi on 5/3/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct Hw1: View {
    var body: some View {
        ZStack{
            Image("Rectangle")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Spacer()
                Text("2+2")
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                HStack{ Text("AC").modifier(buttonlayout())
                    Text("±").modifier(buttonlayout())
                    Text("%").modifier(buttonlayout())
                    Text("/").modifier(buttonlayout())
                }
                HStack{ Text("7").modifier(buttonlayout())
                    Text("8").modifier(buttonlayout())
                    Text("9").modifier(buttonlayout())
                    Text("x").modifier(buttonlayout())
                }
                HStack{ Text("6").modifier(buttonlayout())
                    Text("5").modifier(buttonlayout())
                    Text("4").modifier(buttonlayout())
                    Text("-").modifier(buttonlayout())
                }
                HStack{ Text("1").modifier(buttonlayout())
                    Text("2").modifier(buttonlayout())
                    Text("3").modifier(buttonlayout())
                    Text("+").modifier(buttonlayout())
                }
                HStack{ Text("0")
                    .font(.system(size: 32))
                    .foregroundColor(.white)
                    .frame(width : 170 , height: 80, alignment: .center)
                    .background(Color.black)
                    .cornerRadius(40)
                    
                    Text(".").modifier(buttonlayout())
                    Text("=").modifier(buttonlayout())
                    
                }
                .padding(.bottom ,10)
                
                
                
                
            }
}
    }
}

struct Hw1_Previews: PreviewProvider {
    static var previews: some View {
        Hw1()
    }
}
struct buttonlayout :ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32))
        .foregroundColor(.white)
            .frame(width : 80 , height: 80)
            .background(Color.black)
            .cornerRadius(40)

    }
}
