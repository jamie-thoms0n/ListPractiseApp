//
//  FirstView.swift
//  To Take App
//
//  Created by Jamie Thomson on 20/03/2022.
//

import SwiftUI

struct FirstView: View {
//    @State var thisClass = toDoList()
    var body: some View {
        
            TabView{
                takeHomeView()
                    .tabItem{
                        Label("Home", systemImage : "house")
                    }
                takeSchoolView()
                    .tabItem{
                        Label("School", systemImage : "building.columns")
                    }
            }
        }
    
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
