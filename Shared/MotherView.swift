//
//  MotherView.swift
//  NavigatinInSwiftUIStarter
//
//  Created by Andrei Istoc on 15.02.2021.
//

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            ContentViewA()
        case .page2:
            ContentViewB().transition(.scale)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
