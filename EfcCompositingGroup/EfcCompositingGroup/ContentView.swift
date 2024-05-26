//
//  ContentView.swift
//  EfcCompositingGroup
//
//  Created by efulgencio on 26/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack{
                HStack {
                    RoundedRectangle(cornerRadius:40)
                        .fill(.black.opacity(0.1))
                        .frame(width:110, height:80)
                        .offset(x:50)
                        .zIndex(-1)

                    RoundedRectangle(cornerRadius:10)
                        .fill(.black)
                        .frame(width:200, height:100)
                    

                }
                .compositingGroup()
                .shadow(
                    color: .black.opacity(0.4),
                    radius: 30,
                    y: 30
                )
                Text("Opción")
                    .foregroundColor(.white)
                    .padding(.leading, 50)
                CircleColors2(nameImage:"trash")
                    .padding(.leading, -100)
            }
            ZStack{
                HStack {
                    RoundedRectangle(cornerRadius:45)
                        .fill(.black.opacity(1.0))
                        .frame(width:110, height:80)
                        .offset(x:50)
                        .zIndex(-1)

                    RoundedRectangle(cornerRadius:10)
                        .fill(.black)
                        .frame(width:200, height:100)
                    

                }
                .compositingGroup()
                .shadow(
                    color: .black.opacity(0.4),
                    radius: 30,
                    y: 30
                )
                Text("Opción")
                    .foregroundColor(.white)
                    .padding(.leading, 50)
                CircleColors2()
                    .padding(.leading, -100)
            }
            ZStack{
                HStack {
                    RoundedRectangle(cornerRadius:40)
                        .fill(.black.opacity(0.1))
                        .frame(width:110, height:80)
                        .offset(x:50)
                        .zIndex(-1)

                    RoundedRectangle(cornerRadius:10)
                        .fill(.black)
                        .frame(width:200, height:100)
                    

                }
                .compositingGroup()
                .shadow(
                    color: .black.opacity(0.4),
                    radius: 30,
                    y: 30
                )
                Text("Opción")
                    .foregroundColor(.white)
                    .padding(.leading, 50)
                CircleColors2(nameImage:"map")
                    .padding(.leading, -100)
            }

            ZStack{
                HStack {
                    RoundedRectangle(cornerRadius:10)
                        .fill(.blue)
                        .frame(width:200, height:80)
                    
                    RoundedRectangle(cornerRadius:45)
                        .fill(.blue.opacity(0.3))
                        .frame(width:110, height:80)
                        .offset(x:-60)
                        .zIndex(-1)

                }
                .compositingGroup()
                .shadow(
                    color: .black.opacity(0.4),
                    radius: 30,
                    y: 30
                )
 
                CircleColors2(nameImage:"trash")
                    .offset(x:70)
            }
            ZStack{
                HStack {
                    RoundedRectangle(cornerRadius:10)
                        .fill(.blue)
                        .frame(width:200, height:80)
                    
                    RoundedRectangle(cornerRadius:45)
                        .fill(.blue.opacity(1.0))
                        .frame(width:110, height:80)
                        .offset(x:-60)
                        .zIndex(-1)

                }
                .compositingGroup()
                .shadow(
                    color: .black.opacity(0.4),
                    radius: 30,
                    y: 30
                )
 
                CircleColors2(nameImage:"phone")
                    .offset(x:70)
            }
            
            ZStack{
                HStack {
                    RoundedRectangle(cornerRadius:10)
                        .fill(.blue)
                        .frame(width:200, height:80)
                    
                    RoundedRectangle(cornerRadius:45)
                        .fill(.blue.opacity(0.3))
                        .frame(width:110, height:80)
                        .offset(x:-60)
                        .zIndex(-1)

                }
                .compositingGroup()
                .shadow(
                    color: .black.opacity(0.4),
                    radius: 30,
                    y: 30
                )
 
                CircleColors2(nameImage: "map")
                    .offset(x:70)
            }
        }
    }
}

#Preview {
    ContentView()
}


struct CircleColors2: View {
    
    let nameImage: String
    let maxSize: Int
    
    init(nameImage: String = "phone", maxSize: Int = 50) {
        self.nameImage = nameImage
        self.maxSize = maxSize
    }
    
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.primary.opacity(0.2))
                .frame(width: CGFloat(maxSize), height: CGFloat(maxSize))
            Circle()
                .fill(Color.blue.opacity(0.6))
                .frame(width: CGFloat(maxSize - 10), height: CGFloat(maxSize - 10))
            Circle()
                .fill(Color.cyan.opacity(0.9))
                .frame(width: CGFloat(maxSize - 20), height: CGFloat(maxSize - 20))
            Image(systemName: nameImage)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.white)
        }
    }
}
