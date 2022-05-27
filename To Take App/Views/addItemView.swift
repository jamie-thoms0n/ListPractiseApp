//
//  addItemView.swift
//  To Take App
//
//  Created by Jamie Thomson on 26/03/2022.
//

import SwiftUI

struct addItemView: View {
    @StateObject var list: Items
    @State var enteredName : String = ""
    var from: String
    var commit : Bool = false
    var body: some View {
        VStack() {
//            List {
//                ForEach(list.self.items, id : \.self) { item in
//                    Text(item.capitalized)
//                }
            }
            TextField("Enter the your new item to remember",
                      text: $enteredName,
                      onCommit: {
                        if from == "Home" {
                            list.addItem(name : enteredName)
                        } else {
                            list.addItemTwo(name : enteredName)
                        }
                        enteredName = ""
//                      onEditingChanged: { (isBegin) in
//                            if isBegin {
//                                list.addItem(name : enteredName)
//                            }
                        }
                        
            )
                .padding()
                .background(Color.gray.opacity(0.3))
                //.textFieldStyle(RoundedBorderTextFieldStyle())
//            ForEach(list.items, id : \.self) { item in
//                Text(item.capitalized)
//            }
            

             
            
//            Button("Done", action: {
//                list.addItem(name : enteredName)
//            })
        
    }
    
}
    

struct addItemView_Previews: PreviewProvider {
    static var previews: some View {
        addItemView(list: Items(), from: "Home")
    }
}
