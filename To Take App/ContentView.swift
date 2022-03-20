//
//  ContentView.swift
//  To Take App
//
//  Created by Jamie Thomson on 27/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: FirstView(), label:{
                Text("Welcome to your helpful app")
                    .bold()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding()
                }
                )
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

