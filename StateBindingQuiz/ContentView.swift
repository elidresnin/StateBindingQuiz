//
//  ContentView.swift
//  StateBindingQuiz
//
//  Created by Eli Dresnin (student LM) on 12/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var image: String = "forest"
    var body: some View {
        ZStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.vertical)
            VStack{
                Spacer()
                
                Button{
                    image = image == "forest" ? "snowflake": "forest"
                }label: {
                    Text("Let it snow")
                        
                        .font(.largeTitle)
                        .foregroundColor(Color.purple)
                        .padding(.all)
                        .background()
                        .cornerRadius(20)
                    
                        
                        
                }
                
            }
            
        }
        //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
