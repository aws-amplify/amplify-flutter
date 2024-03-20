//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public final class AtomicDictionary<Key: Hashable, Value> {
    private let lock: NSLocking
    private var value: [Key: Value]

    public init(initialValue: [Key: Value] = [Key: Value]()) {
        self.lock = NSLock()
        self.value = initialValue
    }

    public var count: Int {
        lock.execute { value.count }
    }

    public var keys: [Key] {
        lock.execute { Array(value.keys) }
    }

    public var values: [Value] {
        lock.execute { Array(value.values) }
    }

    // MARK: - Functions

    public func getValue(forKey key: Key) -> Value? {
        lock.execute { value[key] }
    }

    public func removeAll() {
        lock.execute { value = [:] }
    }

    @discardableResult
    func removeValue(forKey key: Key) -> Value? {
        return lock.execute { value.removeValue(forKey: key) }
    }

    public func set(value: Value, forKey key: Key) {
        lock.execute { self.value[key] = value }
    }

    public subscript(key: Key) -> Value? {
        get {
            getValue(forKey: key)
        }
        set {
            if let newValue = newValue {
                set(value: newValue, forKey: key)
            } else {
                removeValue(forKey: key)
            }
        }
    }
}

extension AtomicDictionary: ExpressibleByDictionaryLiteral {
    public convenience init(dictionaryLiteral elements: (Key, Value)...) {
        let dictionary: [Key: Value] = .init(uniqueKeysWithValues: elements)
        self.init(initialValue: dictionary)
    }
}

extension AtomicDictionary: Sequence {
    typealias Iterator = DictionaryIterator

    public func makeIterator() -> DictionaryIterator<Key, Value> {
        lock.execute {
            value.makeIterator()
        }
    }
}
