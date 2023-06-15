//
//  ProfileView.swift
//  instagramApp
//
//  Created by andrew austin on 6/15/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                // header
                VStack(spacing: 10) {
                    // pic and stats
                    HStack{
                        Image("black-panther-1")
                            .resizable()
                            .scaledToFill()
                            .frame(width:80, height:80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack {
                            UserStatView(value: 12, title: "Posts")
                            
                            UserStatView(value: 32, title: "Followers")
                            
                            UserStatView(value: 12, title: "Following")
                        }
                        
                    }
                    .padding(.horizontal)
                    
                    // name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Chadwick Bozeman")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Wakanda Forever")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // action button
                    
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    
                    Divider()
                }
                
                //post grid view
                
                LazyVGrid(columns: gridItems) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("black-panther-1")
                            .resizable()
                            .scaledToFill()
                            
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}