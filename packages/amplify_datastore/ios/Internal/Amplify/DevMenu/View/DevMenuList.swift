//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import SwiftUI

/// View containing a list of developer menu items
struct DevMenuList: View {

    private let screenTitle = "Amplify Developer Menu"
    private let amplifyDevMenuListItems: [DevMenuItem] =
    [
        DevMenuItem(type: .environmentInformation),
        DevMenuItem(type: .deviceInformation),
        DevMenuItem(type: .logViewer),
        DevMenuItem(type: .reportIssue)
    ]

    var body: some View {
        NavigationView {
            SwiftUI.List(amplifyDevMenuListItems) { listItem in
                NavigationLink(destination: DetailViewFactory.getDetailView(type: listItem.type)) {
                    DevMenuRow(rowItem: listItem)
                }
            }
            .navigationBarTitle(
                Text(screenTitle),
                displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

@available(iOS 13.0.0, *)
struct AmplifyDevMenuList_Previews: PreviewProvider {
    static var previews: some View {
        DevMenuList()
    }
}
#endif
