//
//  List.swift
//  To Take App
//
//  Created by Jamie Thomson on 20/03/2022.
//

import Foundation

class Items : ObservableObject {
    @Published var items : [String]
    
    init() {
        items = [
            "apple", "orange", "banana"
            
            ]
    }
    
    
    func delete(indexSet: IndexSet) {
        self.items.remove(atOffsets: indexSet)
    }
    
    func moveItem(indices : IndexSet, newOffset : Int ) {
        self.items.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem(name : String) {
        self.items.append(name)
    }
    
}
