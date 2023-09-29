//
//  ContentView.swift
//  HW15-16
//
//  Created by Богдан Борисенко on 26.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                NavigationLink(destination: two()) {
                    Text("Перейти до основного экрана")
                }
                .font(.headline)
                .padding(.vertical, 20)
                .padding(.horizontal, 40)
                .background(.blue)
                .foregroundColor(.white)
                .padding(.top, 640)
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
