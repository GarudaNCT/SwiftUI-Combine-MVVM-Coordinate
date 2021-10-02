//
//  HomView.swift
//  SwiftUI-Combine-MVVM-Coordinator
//
//  Created by NL on 12/09/2021.
//

import SwiftUI

struct HomeView: View {
    var dismiss: (() -> Void)?
    var login: (() -> Void)?
    let colums = [
        GridItem(.flexible())]
    @State var listImage = ["ic_banner_1", "ic_banner_2", "ic_banner_3"]
    @State var index = 0
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 16) {
               
                Button(action: {
                    
                }, label: {
                    Text("Skip")
                        .foregroundColor(.red)
                })
                .padding(.leading, 16.0)
                .leadingAlignment()
                
            }
            ScrollViewReader { scrollView in
                ScrollView(.horizontal) {
                    LazyHStack {
                        PageView(listImage: $listImage)
                    }
                    .onAppear {
                    }
                }
            }
            HStack {
                Group {
                    Button(action: {
                        login!()
                    }) {
                        Text("Login")
                            .padding()
                    }
                    .foregroundColor(.black)
                    .frame(width: 150, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                }
                .background(Color.white)
                .cornerRadius(20)
                Group {
                    Button(action: { }) {
                        Text("Register")
                            .padding()
                    }
                    .foregroundColor(.white)
                    .frame(width: 150, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
                .background(Color.green)
                .cornerRadius(20)
                .frame(width: 150, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            Spacer()
        }
        .background(Image("ic_bg")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct PageView: View {
    let width = UIScreen.main.bounds.size.width
    
    @Binding var listImage: [String]
    var body: some View {
        TabView {
            
            ForEach(listImage, id: \.self) { imgName in
                VStack {
                    Image(imgName)
                }
            }
        }
        
        .frame(width: width, height: width*1.2)
        .tabViewStyle(PageTabViewStyle())
    }
}
