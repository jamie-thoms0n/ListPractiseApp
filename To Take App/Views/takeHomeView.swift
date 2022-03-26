//
//  takeHomeView.swift
//  To Take App
//
//  Created by Jamie Thomson on 20/03/2022.
//

import SwiftUI

struct takeHomeView: View {

    @StateObject var list = Items()
  //    @State var adjustableList = list.makeList()
    
    var body: some View {
        VStack {
            Text("Take these things back home:")
                .bold()
            NavigationView {
                List {
                    ForEach(list.items, id : \.self) { item in
                        Text(item.capitalized)
                    }
                    .onDelete(perform: { indexSet in
                        list.delete(indexSet: indexSet)})
                    .onMove(perform: list.moveItem)
                }
                .navigationBarItems(
                    leading:
                        EditButton(),
                    trailing:
                        NavigationLink(destination :addItemView(), label:{
                            Text("Add")
                        })
                        
                )
                
            }
        }
    }
}

struct takeHomeView_Previews: PreviewProvider {
    static var previews: some View {
        takeHomeView()
    }
}
