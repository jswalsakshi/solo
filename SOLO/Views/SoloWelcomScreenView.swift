//
//  SoloWelcomScreenView.swift
//  SOLO
//
//  Created by sakshi.j on 08/11/23.
//

import SwiftUI

struct SoloWelcomScreenView: View {
    
    @State var index = 0
    
    var body: some View {
        
        GeometryReader {_ in
            
            VStack {
                
                Image("logo")
                .resizable()
                .frame(width: 60, height: 60)
                
                ZStack{
                    
                    SoloSignupView(index: self.$index)
                        // changing view order...
                        .zIndex(Double(self.index))
                    
                    SoloLoginView(index: self.$index)

                }
                
                HStack(spacing: 15) {
                    
                    Rectangle()
                    .fill(Color("Color3"))
                    .frame(height: 1)
                    
                    Text("OR")
                    
                    Rectangle()
                    .fill(Color("Color3"))
                    .frame(height: 1)
                }
                .padding(.horizontal, 30)
                .padding(.top, 50)
                // because login button is moved 25 in y axis and 25 padding = 50
                
                HStack(spacing: 25){
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("apple")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("fb")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("twitter")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                }
                .padding(.top, 30)
            }
            .padding(.vertical)
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))
    }
}
