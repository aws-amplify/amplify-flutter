//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import SwiftUI
#if os(iOS)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

/// Issue report screen in developer menu
#if os(iOS)
struct IssueReporter: View {
    @State var issueDescription: String = ""
    @State var includeLogs = true
    @State var includeEnvInfo = true
    @State var includeDeviceInfo = true
    @State var showAlertIfInvalidURL = false

    private static let minCharacterLimit = 140
    private let issueDescriptionHint = "Please provide a short description of the issue.."
    private let includeLogsText = "Include logs"
    private let includeEnvInfoText = "Include environment information"
    private let includeDeviceInfoText = "Include device information"
    private let reportOnGithubButtonText = "Report on Github"
    private let copyToClipboardButtonText = "Copy to Clipboard"
    private let screenTitle = "Report Issue"
    private let amplifyIosNewIssueUrl = "https://github.com/aws-amplify/amplify-ios/issues/new?&title=&body="
    private let githubURLErrorTitle = "Error"
    private let githubURLErrorMessage = "Unable to parse Github URL. Please use the Copy to Clipboard option."
    private let moreCharactersRequired = "Characters required"

    var body: some View {
        ScrollView {
            VStack {
                MultilineTextField(text: $issueDescription, placeHolderText: issueDescriptionHint)
                    .border(Color.gray)
                    .frame(height: 350)

                HStack {
                    Text("\(moreCharactersRequired): \(remainingCharactersRequired())")
                        .foregroundColor(Color.secondary)
                        .font(.system(size: 15))
                    Spacer()
                }.padding(.bottom)

                Toggle(isOn: $includeEnvInfo) {
                    Text(includeEnvInfoText).bold()
                }.padding(.bottom)

                Toggle(isOn: $includeDeviceInfo) {
                    Text(includeDeviceInfoText).bold()
                }.padding(.bottom)

                Spacer()

                Button(reportOnGithubButtonText, action: reportToGithub)
                    .padding()
                    .font(.subheadline)
                    .frame(maxWidth: .infinity)
                    .border(Color.blue)
                    .padding(.bottom)
                    .alert(isPresented: $showAlertIfInvalidURL) {
                        Alert(title: Text(githubURLErrorTitle),
                              message: Text(githubURLErrorMessage),
                              dismissButton: .default(Text("OK")))
                    }
                    .disabled(shouldDisableReporting())

                Button(copyToClipboardButtonText, action: copyToClipboard)
                    .padding()
                    .font(.subheadline)
                    .frame(maxWidth: .infinity)
                    .border(Color.blue)
                    .disabled(shouldDisableReporting())

            }.padding()
                .navigationBarTitle(Text(screenTitle))
        }
    }

    /// Get number of extra characters required for a valid issue description length
    /// Returns 0 if issue description length fulfills `minCharacterLimit` criteria
    private func remainingCharactersRequired() -> Int {
        return max(IssueReporter.minCharacterLimit - issueDescription.count, 0)
    }

    private func shouldDisableReporting() -> Bool {
      return remainingCharactersRequired() > 0
    }

    /// Open Amplify iOS issue logging screen on Github
    private func reportToGithub() {
        let issueDescriptionMarkdown =
            IssueInfoHelper.generateMarkdownForIssue(
                issue: IssueInfo(issueDescription: issueDescription,
                         includeEnvInfo: includeEnvInfo,
                         includeDeviceInfo: includeDeviceInfo))

        let urlString = amplifyIosNewIssueUrl + issueDescriptionMarkdown
        guard let url = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            showAlertIfInvalidURL = true
            return
        }
        guard let urlToOpen = URL(string: url) else {
            showAlertIfInvalidURL = true
            return
        }

        UIApplication.shared.open(urlToOpen)
    }

    /// Copy issue as a markdown string to clipboard
    private func copyToClipboard() {
        let issue = IssueInfo(issueDescription: issueDescription,
                              includeEnvInfo: includeEnvInfo,
                              includeDeviceInfo: includeDeviceInfo)
        let value = IssueInfoHelper.generateMarkdownForIssue(issue: issue)
#if os(iOS)
        UIPasteboard.general.string = value
#elseif canImport(AppKit)
        NSPasteboard.general.setString(value, forType: .string)
#endif
    }
}

final class IssueReporter_Previews: PreviewProvider {
    static var previews: some View {
        IssueReporter()
    }
}

/// Custom defined view for multi line text field
final class MultilineTextField: UIViewRepresentable {
    @Binding var text: String
    var placeHolderText: String = ""

    init(text: Binding<String>, placeHolderText: String) {
        self._text = text
        self.placeHolderText = placeHolderText
    }

    func makeUIView(context: UIViewRepresentableContext<MultilineTextField>) -> UITextView {
        let view = UITextView()
        view.isScrollEnabled = true
        view.isEditable = true
        view.isUserInteractionEnabled = true
        view.delegate = context.coordinator
        view.font = .systemFont(ofSize: 15)
        view.textColor = .secondaryLabel
        view.text = placeHolderText

        /// add a dismiss button in UIToolbar for keyboard
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 35))
        let emptySpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let dismissButton = UIBarButtonItem(title: "Dismiss", style: .done,
                                            target: self, action: #selector(dismissKeyboard))
        toolbar.setItems([emptySpace, dismissButton], animated: false)
        toolbar.sizeToFit()

        view.inputAccessoryView = toolbar
        return view
    }

    @objc func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                        to: nil, from: nil, for: nil)
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
    }

    func makeCoordinator() -> Coordinator {
        return MultilineTextField.Coordinator(parent: self)
    }

    class Coordinator: NSObject, UITextViewDelegate {
        var parent: MultilineTextField

        init(parent: MultilineTextField) {
            self.parent = parent
        }

        func textViewDidChange(_ textView: UITextView) {
            parent.text = textView.text
        }

        func textViewDidBeginEditing(_ textView: UITextView) {
            if textView.textColor == .secondaryLabel {
                textView.text = nil
                textView.textColor = .label
            }
        }
    }
}
#endif
