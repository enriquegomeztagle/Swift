
//
//  ContentView.swift
//  learning-swift-ui
//
//  Created by iOS Lab on 09/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack{
//            Spacer() // SPACING
//            Text("Hola")
//                .background(Color.blue)
//            Spacer()
//            HStack{
//                Spacer()
//                Text("Hola2")
//                    .background(Color.green)
//                Spacer()
//                Text("Hola3")
//                    .background(Color.red)
//                Spacer()
//            }
//            Spacer()
//            Image("cow")
//                // .resizable() // ALWAYS NEEDED FOR RESIZE
//                // .scaledToFit() // ASPECT RATIO
//                // .scaledToFill() // FILLS COMPLETELY
//            Spacer()
            
        VStack{
            Spacer()
            Text("Label")
                .foregroundColor(Color.blue)
                .bold()
                .font(.system(size: 36))
//            Spacer()
            Image("cow")
                .resizable()
                .scaledToFit()
            Spacer()
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            }
                .padding()
                .font(.system(size: 36))
                .background(Color(red:0, green: 0, blue: 0.8))
                .foregroundColor(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
