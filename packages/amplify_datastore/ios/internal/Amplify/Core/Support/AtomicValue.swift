//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A class that wraps access to its underlying value with an NSLocking instance.
public final class AtomicValue<Value> {
    let lock: NSLocking
    var value: Value

    public init(initialValue: Value) {
        self.lock = NSLock()
        self.value = initialValue
    }

    public func get() -> Value {
        lock.execute {
            value
        }
    }

    public func set(_ newValue: Value) {
        lock.execute {
            value = newValue
        }
    }

    /// Sets AtomicValue to `newValue` and returns the old value
    public func getAndSet(_ newValue: Value) -> Value {
        lock.execute {
            let oldValue = value
            value = newValue
            return oldValue
        }
    }

    /// Performs `block` with the current value, preventing other access until the block exits.
    public func atomicallyPerform(block: (Value) -> Void) {
        lock.execute {
            block(value)
        }
    }

    /// Performs `block` with an `inout` value, preventing other access until the block exits,
    /// and enabling the block to mutate the value
    ///
    /// - Warning: The AtomicValue lock is not reentrant. Specifically, it is not
    /// possible to call outside the block to `get` an AtomicValue (e.g., via a
    /// convenience property) while inside the `with` block. Attempting to do so will
    /// cause a deadlock.
    public func with(block: (inout Value) -> Void) {
        lock.execute {
            block(&value)
        }
    }

}
