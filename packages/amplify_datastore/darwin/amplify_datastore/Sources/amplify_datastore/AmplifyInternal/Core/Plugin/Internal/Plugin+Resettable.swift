//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public extension Resettable where Self: Plugin {
    /// A default conformance if the plugin has no reset logic
    ///
    /// **Warning**
    ///
    /// This conformance will take precedence over a non-async `reset` method in an async context. Thus, given a plugin like:
    /// ```swift
    /// class MyPlugin: Plugin {
    ///     // Not invoked during `await Amplify.reset()`
    ///     func reset() { ... }
    /// }
    /// ```
    ///
    /// The `MyPlugin.reset()` method will never be called during an invocation of `await Amplify.reset()`. Ensure
    /// plugin `reset()` methods are always declared `async`:
    /// ```swift
    /// class MyPlugin: Plugin {
    ///     // Invoked during `await Amplify.reset()`
    ///     func reset() async { ... }
    /// }
    /// ```
    ///
    /// As a best practice, always invoke `reset` through the Resettable protocol existential, rather than the concrete conforming
    /// type, especially in tests:
    /// ```swift
    /// func testReset() async {
    ///     let resettable = plugin as Resettable
    ///     await resettable.reset()
    ///     // ... assert that the plugin state has been cleared
    /// }
    /// ```
    func reset() async {
        // Do nothing
    }
}
