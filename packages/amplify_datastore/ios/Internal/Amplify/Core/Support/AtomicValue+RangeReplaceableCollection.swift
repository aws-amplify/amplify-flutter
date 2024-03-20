//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension AtomicValue where Value: RangeReplaceableCollection {
    public func append(_ newElement: Value.Element) {
        lock.execute {
            value.append(newElement)
        }
    }

    public func append<S>(contentsOf sequence: S) where S: Sequence, S.Element == Value.Element {
        lock.execute {
            value.append(contentsOf: sequence)
        }
    }

    public func removeFirst() -> Value.Element {
        lock.execute {
            value.removeFirst()
        }
    }

    public subscript(_ key: Value.Index) -> Value.Element {
        lock.execute {
            value[key]
        }
    }
}
