//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import SwiftUI

/// View corresponding to each row in Developer Menu
struct DevMenuRow: View {
    var rowItem: DevMenuItem

    var body: some View {
        HStack {
            Image(systemName: rowItem.type.iconName)
                .frame(width: 50.0, height: 50.0)
                .foregroundColor(.secondary)
            Text(rowItem.type.stringValue)
            Spacer()
        }
    }
}

struct DevMenuRow_Previews: PreviewProvider {
    static var previews: some View {
        DevMenuRow(rowItem: DevMenuItem(type: .environmentInformation))
    }
}
#endif
