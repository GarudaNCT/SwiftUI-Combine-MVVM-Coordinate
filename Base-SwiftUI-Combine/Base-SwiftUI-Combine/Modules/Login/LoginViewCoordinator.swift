//
//  LoginViewCoordinator.swift
//  Base-SwiftUI-Combine
//
//  Created by NL on 17/09/2021.
//

import SwiftUI

struct LoginViewCoordinator: View {
    var body: some View {
        NavigationView {
            VStack {
                LoginView()
            }
        }
        .navigationTitle("")
    }
}

struct LoginViewCoordinator_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewCoordinator()
    }
}
