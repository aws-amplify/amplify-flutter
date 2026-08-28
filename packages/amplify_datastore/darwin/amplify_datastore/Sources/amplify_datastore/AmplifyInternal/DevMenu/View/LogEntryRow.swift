//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import SwiftUI

/// View for each row in Log Viewer screen
struct LogEntryRow: View {
    var logEntryItem: LogEntryItem

    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text(logEntryItem.logLevelString).foregroundColor(logEntryItem.logLevelTextColor).bold() +
                Text(" ") +
                Text(logEntryItem.message)
            }.lineLimit(2).padding(.bottom, 5)

            Text(LogEntryHelper.dateString(from: logEntryItem.timeStamp))
                .font(.system(size: 15))
                .foregroundColor(Color.secondary)
        }.padding(5)
    }
}
#endif
