//
//  HomeViewCoodinator.swift
//  SwiftUI-Combine-MVVM-Coordinator
//
//  Created by NL on 12/09/2021.
//

import SwiftUI

struct HomeViewCoodinator: View {
    @State var isSelectedLogin = false
    @State var isSkip = false
    var body: some View {
        VStack {
            HomeView {
                isSkip = true
            } login: {
                isSelectedLogin = true
            }

            if isSelectedLogin {
                NavigationLink(
                    destination: LoginViewCoordinator(),
                    isActive: $isSelectedLogin,
                    label: {
                        EmptyView()
                    })
            }
        }
    }
}

