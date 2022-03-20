//
//  toDoList.swift
//  To Take App
//
//  Created by Jamie Thomson on 27/01/2022.
//

import Foundation

class toDoList : ObservableObject {
    @Published var list : [String]
    let const : [String]
    @Published var this : Bool
    
    
    init() {
        self.const = ["yes"]
        self.list = ["Wallet", "Phone"]
        self.this = false
    }
    
    func changeSymbol (){
        if self.this == false{
            self.this = true
        }else{
            self.this = false
        }
    }
    
    
    
    
    
}
