//
//  BaseView.swift
//

import SwiftUI

struct BaseView: View {
    @State var showMenu: Bool = false
    
    var body: some View {
        NavigationView {
            HStack(spacing: 0) {
                //side menu
                SideMenu(showMenu: $showMenu)
            }
            // No nav bar title
            // hiding nav bar
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
