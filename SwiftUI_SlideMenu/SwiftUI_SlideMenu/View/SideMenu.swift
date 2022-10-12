//
//  SideMenu.swift
//

import SwiftUI

struct SideMenu: View {
    @Binding var showMenu: Bool
    let list: [SideMenuListButtonModel] = [
        SideMenuListButtonModel(title: "Profile", image: "profile"),
        SideMenuListButtonModel(title: "Setting", image: "add"),
        SideMenuListButtonModel(title: "grid", image: "grid"),
        SideMenuListButtonModel(title: "Lists", image: "profile"),
        SideMenuListButtonModel(title: "Moments", image: "add"),
        SideMenuListButtonModel(title: "Bookmarks", image: "grid"),
        SideMenuListButtonModel(title: "Topics", image: "profile")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 5) {
                Image("j")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                
                Text("죠르디")
                    .font(.title2.bold())
                Text("@jordy")
                    .font(.callout)
                
                HStack(spacing: 12) {
                    Button {
                        
                    } label: {
                        Label {
                            Text("Followers")
                        } icon: {
                            Text("189")
                                .fontWeight(.bold)
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        Label {
                            Text("Followings")
                        } icon: {
                            Text("1.2M")
                                .fontWeight(.bold)
                        }
                    }
                }
                .foregroundColor(.primary)
            }
            .padding(.horizontal)
            .padding(.leading)
            .padding(.bottom)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    VStack(alignment: .leading, spacing: 45) {
                        //tab button
                        ForEach(list, id: \.self) { data in
                            TabButton(title: data.title, image: data.image)
                        }
                    }
                    .padding()
                    .padding(.leading)
                    .padding(.top, 45)
                    
                    Divider()
                    
                    TabButton(title: "Twitter Ads", image: "search")
                        .padding()
                        .padding(.leading)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 25) {
                        Button("Settings And Privacy") {
                            
                        }
                        
                        Button("Help Center") {
                            
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .padding(.leading)
                    .padding(.bottom)
                    .foregroundColor(.primary)
                }
            }
            
            VStack(spacing: 0) {
                Divider()
                HStack {
                    Button {
                        
                    } label: {
                        Image("add")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 22, height: 22)
                    }

                    Spacer()
                    
                    Image("grid")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 22, height: 22)
                }
                .padding([.horizontal, .top], 15)
            }
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(width: getRect().width - 90)
        .frame(maxHeight: .infinity)
        .background(
            Color.primary.opacity(0.05)
                .ignoresSafeArea(.container, edges: .vertical)
        )
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

extension SideMenu {
    func TabButton(title: String, image: String) -> some View {
        ZStack {
            Button {
                print(title)
            } label: {
                HStack(spacing: 14) {
                    Image(image)
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 22, height: 22)
                    
                    Text(title)
                }
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
