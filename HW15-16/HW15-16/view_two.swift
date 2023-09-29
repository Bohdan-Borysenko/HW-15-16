//
//  view_two.swift
//  HW15-16
//
//  Created by Богдан Борисенко on 27.09.2023.
//

import SwiftUI

struct view_two: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var books: FetchedResults<Book>
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(books) {book in
                    NavigationLink{
                        Text(book.title ?? "Unknow Title")
                    } label: {
                        HStack {
//                        emojView: (book.rating)
//                                .font(.largeTitle)
                            
                            VStack(alignment: .leading) {
                                Text(book.title ?? "Unknow Title")
                                    .font(.headline)
                                
                                Text(book.author ?? "Unknow Title")
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
            }
                .navigationTitle("Bookworn")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showingAddScreen.toggle()
                        } label: {
                            Label("Add", systemImage: "plus")
                        }
                        }
                    }
                .sheet(isPresented: $showingAddScreen) {
                    view_one()
                }
                }
        
        }
    }



struct view_two_Previews: PreviewProvider {
    static var previews: some View {
        view_two()
    }
}
