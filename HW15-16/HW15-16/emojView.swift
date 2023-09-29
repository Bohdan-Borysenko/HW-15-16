//
//  emojView.swift
//  HW15-16
//
//  Created by Богдан Борисенко on 30.09.2023.
//

import SwiftUI

struct emojView: View {
    let rating: Int16
    
    var body: some View {
        switch rating {
        case 1:
            return Text("1")
        case 2:
            return Text("2")
        case 3:
            return Text("3")
        case 4:
            return Text("4")
        default:
            return Text("5")
        }
    }
}

//struct emojView_Previews: PreviewProvider {
//    static var previews: some View {
//        emojView(rating: <#Int16#>)
//    }
//}
