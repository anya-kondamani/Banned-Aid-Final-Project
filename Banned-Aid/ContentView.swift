//
//  ContentView.swift
//  Banned-Aid
//
//  Created by anya kondamani on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color("Color2")
                Text("banned-aid")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color6"))
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 400, height: 100)
                    .background(Rectangle().fill(Color.accentColor).shadow(radius: 1))
                    .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-250.0/*@END_MENU_TOKEN@*/)
                VStack{
                    HStack{
                        Image(systemName: "star")
                            .foregroundColor(Color("Color6"))
                        Image(systemName: "book")
                            .foregroundColor(Color("Color6"))
                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                        Image(systemName: "star")
                            .foregroundColor(Color("Color6"))
                    }
                    .padding(.top, 150.0)
                    Text("books around the               world are being banned        just for discussing            topics that go against")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Color5"))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10.0)
                    Text("“the norm”")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color6"))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10.0)
                    NavigationLink(destination:secondview()){
                        Text("learn more here")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Color3"))
                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.accessibility3/*@END_MENU_TOKEN@*/)
                            .italic()
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 300, height: 70)
                            .background(Rectangle().fill(Color("Color4")).shadow(radius: 1))
                    }
                    .padding(.top)
                    NavigationStack{
                        Text("know something we don't?")
                            .foregroundColor(Color("Color5"))
                            .padding(.top)
                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxLarge/*@END_MENU_TOKEN@*/)
                        Text("help us improve")
                            .foregroundColor(Color("Color5"))
                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxLarge/*@END_MENU_TOKEN@*/)
                        Image(systemName: "lightbulb")
                            .foregroundColor(Color("Color5"))
                            .padding(.vertical, 2.0)
                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxLarge/*@END_MENU_TOKEN@*/)
                            .bold()
                        NavigationLink(destination:infoview()){
                            Text("submit info")
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Color3"))
                                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.accessibility3/*@END_MENU_TOKEN@*/)
                                .italic()
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: 200, height: 50)
                                .background(Rectangle().fill(Color("Color4")).shadow(radius: 1))
                        }
                    }
                }
                
            }
            .ignoresSafeArea()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
