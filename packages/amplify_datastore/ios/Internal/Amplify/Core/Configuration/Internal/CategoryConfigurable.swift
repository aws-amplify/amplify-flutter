//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

protocol CategoryConfigurable: AnyObject, CategoryTypeable {

    /// true if the category has already been configured
    var isConfigured: Bool { get }

    /// Configures the category and added plugins using `configuration`
    ///
    /// - Parameter configuration: The CategoryConfiguration
    func configure(using configuration: CategoryConfiguration?) throws

    /// Convenience method for configuring the category using the top-level AmplifyConfiguration
    ///
    /// - Parameter amplifyConfiguration: The AmplifyConfiguration
    func configure(using amplifyConfiguration: AmplifyConfiguration) throws

    /// Clears the category configurations, and invokes `reset` on each added plugin
    func reset() async

}
