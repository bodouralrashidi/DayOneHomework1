//
//  PayerTime.swift
//  DayOneHomework1
//
//  Created by Bodour Alrashidi on 5/4/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct PayerTime: View {
    var body: some View {
        ZStack{
            VStack{
            Text("time")
            Text("مضى على الاذان")
                HStack {
                    Text("<").m
                }
                
            }
            
        }
    }
}

struct PayerTime_Previews: PreviewProvider {
    static var previews: some View {
        PayerTime()
    }
}
