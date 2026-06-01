//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import SwiftUI

struct LogViewer: View {

    @State private var searchText: String = ""
    @State private var filter: FilterType = .all
    private let screenTitle = "Log Viewer"
    private let searchHint = "Search logs..."
    private let noLogsAvailable = "No logs available"

    private var logHistory: [LogEntryItem] = LogEntryHelper.getLogHistory()

    enum FilterType: String, CaseIterable, Identifiable {
        case all
        case error
        case warn
        case info
        case debug
        case verbose

        var id: String { rawValue }
    }

    var filteredList: [LogEntryItem] {
        switch filter {
        case .all:
            return logHistory
        case .error:
            return logHistory.filter {$0.logLevel == LogLevel.error}
        case .warn:
            return logHistory.filter {$0.logLevel == LogLevel.warn}
        case .info:
            return logHistory.filter {$0.logLevel == LogLevel.info}
        case .debug:
            return logHistory.filter {$0.logLevel == LogLevel.debug}
        case .verbose:
            return logHistory.filter {$0.logLevel == LogLevel.verbose}
        }
    }

    var body: some View {
        VStack {
            if logHistory.isEmpty {
                Spacer()
                Text(noLogsAvailable)
                Spacer()
            } else {
                SearchBar(text: $searchText, searchHint: searchHint).padding(.horizontal)
                Picker("Filter", selection: $filter) {
                    ForEach(FilterType.allCases) { filter in
                        Text(filter.rawValue.capitalized).tag(filter)
                    }
                }.pickerStyle(SegmentedPickerStyle()).padding(.horizontal, 25)
                SwiftUI.List(filteredList.filter {
                    searchText.isEmpty ? true : $0.message.lowercased().contains(searchText.lowercased())
                }) { logEntry in
                    LogEntryRow(logEntryItem: logEntry)
                }
            }
        }.navigationBarTitle(Text(screenTitle))
    }
}

struct LogViewer_Previews: PreviewProvider {
    static var previews: some View {
        LogViewer()
    }
}

/// Search bar view
struct SearchBar: UIViewRepresentable {

    @Binding var text: String
    var searchHint: String

    class Coordinator: NSObject, UISearchBarDelegate {

        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }

    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.placeholder = searchHint
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}
#endif
