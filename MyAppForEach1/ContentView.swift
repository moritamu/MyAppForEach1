//
//  ContentView.swift
//  MyAppForEach1
//
//  Created by MsMacM on 2024/10/20.
//

import SwiftUI

struct ContentView: View {
    @State var fluitsName: String = ""
    @State private var isShowAlert = false
    
    @State var fluits = ["Apple", "Banana", "Orange", "Grape", "Strawberry", "Cherry", "Pineapple", "Kiwi", "Mango", "Papaya"]
    
    var body: some View {
        VStack {
            Form {
                ForEach(0..<fluits.count, id: \.self) { num in
                    Text("\(self.fluits[num])")
                }
                .onDelete(perform: rowRemove)
            }
            FluitsInputView(name: $fluitsName)
            Button {
                print(fluitsName)
                if(!fluitsName.isEmpty) {
                    fluits.append(fluitsName)
                    fluitsName = ""
                }else {
                    isShowAlert.toggle()
                }
            } label: {
                Text("Add")
            }
            .alert("Error", isPresented: $isShowAlert) {
            }message: {
                Text("Please input name")
            }

        }
    }
    func rowRemove(at offsets: IndexSet) {
        fluits.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
