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
        if let data = UserDefaults.standard.data(forKey: "SavedData") {
            if let decoded = try? JSONDecoder().decode([String].self, from: data) {
                items = decoded
                return
            }
        }
        
        items = []
    }
    
    
    func save() {
        if let encoded = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encoded, forKey: "SavedData")
        }
    }
    
    func delete(indexSet: IndexSet) {
        self.items.remove(atOffsets: indexSet)
        save()
    }
    
    func moveItem(indices : IndexSet, newOffset : Int ) {
        self.items.move(fromOffsets: indices, toOffset: newOffset)
        save()
    }
    
    func addItem(name : String) {
        self.items.append(name)
        save()
    }
    
}
