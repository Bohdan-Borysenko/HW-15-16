//
//  two.swift
//  HW15-16
//
//  Created by Богдан Борисенко on 26.09.2023.
//

import SwiftUI

struct two: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack {
                    HStack {
                        VStack {
                            NavigationLink(destination: view_one()) {
                                Image(systemName: "doc.circle.fill")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipped()
                            }
                            Text("table")
                        }
                        Spacer()
                        VStack {
                            NavigationLink(destination: view_two()) {
                                Image(systemName: "calendar.circle.fill")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipped()
                            }
                            Text("collection")
                        }
                    }
                    .padding(.horizontal, 70)
                    
                }
                .padding(.top, 640)
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
    }
}

struct two_Previews: PreviewProvider {
    static var previews: some View {
        two()
    }
}
