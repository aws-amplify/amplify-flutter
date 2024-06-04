//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension AtomicValue where Value == Bool {

    /// Toggles the boolean's value, and returns the **old** value.
    ///
    /// Example:
    /// ```swift
    /// let atomicBool = AtomicValue(initialValue: true)
    /// print(atomicBool.getAndToggle()) // prints "true"
    /// print(atomicBool.get()) // prints "false"
    /// ```
    public func getAndToggle() -> Value {
        lock.execute {
            let oldValue = value
            value.toggle()
            return oldValue
        }
    }
}
