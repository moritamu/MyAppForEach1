//
//  FluitsInputView.swift
//  MyAppForEach1
//
//  Created by MsMacM on 2024/10/20.
//

import SwiftUI

struct  FluitsInputView: View {
    @Binding var name: String
    
    var body: some View {
        VStack {
            Spacer().frame(height: 10)
            TextField("Enter fluits name", text: $name)
            Spacer().frame(height: 10)
            Text("You entered: \(name)")
            
        }
    }
}

#Preview {
//    @Previewable @State var name2: String = "mikan"
    @Previewable @State var name: String = "mikan"
    FluitsInputView(name: $name)
}
