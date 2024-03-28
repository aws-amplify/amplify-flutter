//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import SwiftUI

/// View corresponding to each row in Device Information Screen / Environment Information Screen
struct InfoRow: View {
    var infoItem: InfoItemProvider

    var body: some View {
        VStack(alignment: .leading) {
            Text(self.infoItem.displayName).bold()
            Text(self.infoItem.information)
        }
    }
}

struct DeviceInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(infoItem: DeviceInfoItem(type: .deviceName("iPhone")))
    }
}
#endif
