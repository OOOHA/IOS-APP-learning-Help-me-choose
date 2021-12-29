//
//  ContentView.swift
//  Help me choose
//
//  Created by 邱宏宇 on 7/15/21.
//

import SwiftUI

struct Enter_Screen: View {
    
    @State var option = ""
    @State private var isShowingDetailView = false
    @State var num = [String]()
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Image("Background")
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    TextField("Your Option", text: $option)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(30)
                        .frame(minWidth: 0, maxWidth: 275)
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: result_Page(choose: option),
                        label: {
                            /*Button(action: {
                                //let RandChoose = Int.random(in: 1...num.count)
                            }, label: {
                                Text("Calculate!")
                                    .font(.system(.largeTitle, design: .rounded))
                                    .fontWeight(.medium)
                                    
                                    .frame(minWidth: 0, maxWidth: 250)
                                    .padding()
                                    .foregroundColor(.black)
                                    .background(Color("LightGreen"))
                                    .cornerRadius(30)
                                    .shadow(radius: 30)
                            })*/
                            Text("Calculate!")
                                .font(.system(.largeTitle, design: .rounded))
                                .fontWeight(.medium)
                                .frame(minWidth: 0, maxWidth: 250)
                                .padding()
                                .foregroundColor(.black)
                                .background(Color("LightGreen"))
                                .cornerRadius(30)
                                .shadow(radius: 30)
                        })
                    Spacer()
                }
                
            }
        }
        
        
    }
}

struct result_Page: View{
    
    var choose = ""
    
    var body: some View{
        ZStack{
            Image("Background")
            .ignoresSafeArea()
            
            Text(choose)
                .font(.system(.title2, design: .rounded))
                .fontWeight(.medium)
                .frame(minWidth: 0, maxWidth: 300, minHeight: 0, maxHeight: 300)
                .padding()
                .foregroundColor(.black)
                .background(Color("CoolGreen"))
                .cornerRadius(50)
                .shadow(radius: 50)
        }
    }
}

struct Choose: View {
    var body: some View{
        
        Text("Fuck")
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Enter_Screen()
            .preferredColorScheme(.dark)
    }
}

