//
//  FirstView.swift
//  To Take App
//
//  Created by Jamie Thomson on 20/03/2022.
//

import SwiftUI

struct FirstView: View {
    @StateObject var items = Items()
    var body: some View {
        
            TabView{
                takeHomeView(list: items)
                    .tabItem{
                        Label("Home", systemImage : "house")
                    }
                takeSchoolView(list: items)
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
