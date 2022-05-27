//
//  List.swift
//  To Take App
//
//  Created by Jamie Thomson on 20/03/2022.
//

import Foundation

class Items : ObservableObject {
    @Published var items : [String]
    @Published var itemsTwo : [String]
    
    init() {
        items = []
        itemsTwo = []
        if let data = UserDefaults.standard.data(forKey: "SavedData") {
            if let decoded = try? JSONDecoder().decode([String].self, from: data) {
                items = decoded
                return
            }
            
        }
        if let data = UserDefaults.standard.data(forKey: "SavedData2") {
            if let decoded = try? JSONDecoder().decode([String].self, from: data) {
                itemsTwo = decoded
                return
                
            }
        }
        
        
        
    }
    
    
    
    func save() {
        if let encoded = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encoded, forKey: "SavedData")
        }
        if let encoded = try? JSONEncoder().encode(itemsTwo) {
            UserDefaults.standard.set(encoded, forKey: "SavedData2")
        }
        
        
    }
    
    func delete(indexSet: IndexSet) {
        self.items.remove(atOffsets: indexSet)
        save()
    }
    
    func deleteTwo(indexSet: IndexSet) {
        self.itemsTwo.remove(atOffsets: indexSet)
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
    
    func addItemTwo(name : String) {
        self.itemsTwo.append(name)
        save()
    }
    
    
    
}
