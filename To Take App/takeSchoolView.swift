//
//  takeSchoolView.swift
//  To Take App
//
//  Created by Jamie Thomson on 20/03/2022.
//

import SwiftUI

struct takeSchoolView: View {
    @StateObject var thisClass = toDoList()
    var body: some View {
         VStack{
             Form{
                 HStack(alignment: .top, spacing: 10){
                     if thisClass.this == false{
                         Rectangle()
                             .fill(.red)
                             .frame(width: 20, height: 20)
                             .cornerRadius(5)
                     }else{
                         Rectangle()
                             .fill(.green)
                             .frame(width: 20, height: 20)
                             .cornerRadius(5)
                     }
                     Button("Item 1", action: {
                         thisClass.changeSymbol()
                     })
                 }
             }
         }
    }
}

struct takeSchoolView_Previews: PreviewProvider {
    static var previews: some View {
        takeSchoolView()
    }
}
