//
//  LoginView.swift
//  SwiftUI-Combine-MVVM-Coordinator
//
//  Created by NL on 12/09/2021.
//

import SwiftUI

struct LoginView: View {
    @State var phone: String = ""
    var body: some View {
        VStack(){
            Button("Đóng") {
                
            }
            .foregroundColor(.green)
            .padding(.trailing, 16.0)
            .padding(.top, 16.0)
            .trailingAlignment()
            VStack {
                Text("Nhập số điện thoại")
                    .foregroundColor(.white)
                    .leadingAlignment()
                HStack {
                    Image(systemName: "info.circle")
                        .resizable()
                            .aspectRatio(contentMode: .fill)
                        .background(Color.white)
                        
                        .frame(width: 40, height: 40, alignment: .leading)
                    TextField("phone", text: $phone)
                        .frame(
                              minWidth: 0,
                              maxWidth: .infinity,
                              minHeight: 0,
                              maxHeight: 40,
                              alignment: .topLeading
                            )
                        .border(Color.white, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .cornerRadius(5)
                        
                }
                .frame(
                      minWidth: 0,
                      maxWidth: .infinity,
                      minHeight: 0,
                      maxHeight: 40,
                      alignment: .topLeading
                    )
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .topLeading
            )
        .background(Color.black)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()

    }
}
