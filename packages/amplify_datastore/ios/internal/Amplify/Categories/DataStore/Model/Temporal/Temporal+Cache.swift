//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Temporal {
    // We lock on reads and writes to prevent race conditions
    // of the formatter cache dictionary.
    //
    // DateFormatter itself is thread safe.
    private static var formatterCache: [String: DateFormatter] = [:]

    @usableFromInline
    /// The `Calendar` used for date operations.
    ///
    /// `identifier` is `.iso8601`
    /// `timeZome` is `.utc` a.k.a. `TimeZone(abbreviation: "UTC")`
    internal static let iso8601Calendar: Calendar = {
        var calendar = Calendar(identifier: .iso8601)
        calendar.timeZone = .utc
        return calendar
    }()

    /// Pointer to lock to ensure exclusive access.
    private static let lock: UnsafeMutablePointer<os_unfair_lock> = {
        let pointer = UnsafeMutablePointer<os_unfair_lock>.allocate(capacity: 1)
        pointer.initialize(to: os_unfair_lock())
        return pointer
    }()

    /// Internal helper function to retrieve and/or create `DateFormatter`s
    /// - Parameters:
    ///   - format: The `DateFormatter().dateFormat`
    ///   - timeZone: The `DateFormatter().timeZone`
    /// - Returns: A `DateFormatter`
    internal static func formatter(
        for format: String,
        in timeZone: TimeZone
    ) -> DateFormatter {
        // lock before read from cache
        os_unfair_lock_lock(lock)

        // unlock at return
        defer { os_unfair_lock_unlock(lock) }

        // If the formatter is already in the cache and
        // the time zones match, we return it rather than
        // creating a new one.
        if let formatter = formatterCache[format],
           formatter.timeZone == timeZone {
                return formatter
            // defer takes care of unlock
        }

        // If:
        // - There's not another reference to this formatter
        // - It's already in the cache
        // - The formatter's time zone doesn't match the requested time zone
        // Then:
        // We can safely change the formatter's time zone and return it
        if isKnownUniquelyReferenced(&formatterCache[format]),
           let formatter = formatterCache[format],
           formatter.timeZone != timeZone {
            formatter.timeZone = timeZone
            return formatter
            // defer takes care of unlock
        }

        // We're about to create a new formatter,
        // so let's make sure we're being responsible
        // about the amount of formatters we're caching.
        // If we already have at least 15 formatters in the cache,
        // we're going to evict one using a
        // random replacement (RR) eviction policy
        if formatterCache.count >= 15 {
            // From the `randomElement()` documentation.
            // "A random element from the collection. If the collection is empty, the method returns nil."
            // Since we just confirmed the cache isn't empty, and we're guaranteeing exclusive access
            // through the lock, we can safely force unwrap here.
            let keyToEvict = formatterCache.randomElement()!.key
            formatterCache[keyToEvict] = nil
            // This can likely be improved at a later time by
            // using a LFU, or potentially LRU, eviction policy.
        }

        // Finally, if the formatter is not in the cache
        // or a formatter with the matching format is cached,
        // but the time zone doesn't match *and* the formatter
        // is already referenced elsewhere, we create one.
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.calendar = iso8601Calendar
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = timeZone

        formatterCache[format] = formatter
        return formatter
        // defer takes care of unlock
    }

    @usableFromInline
    /// Turn a `String` into a `Foundation.Date`
    /// - Parameters:
    ///   - string: The date in `String` form.
    ///   - formats: Any formats in `String` form that you want to check.
    ///   - timeZone: The `TimeZone` used by the `DateFormatter` when converted.
    ///               Default is `.utc` a.k.a. `TimeZone(abbreviation: "UTC")`
    /// - Returns: A `Foundation.Date` if conversion was successful.
    /// - Throws: `DataStoreError.invalidDateFormat(_:)` if conversion was unsuccessful.
    internal static func date(
        from string: String,
        with formats: [String],
        in timeZone: TimeZone = .utc
    ) throws -> Foundation.Date {
        for format in formats {
            let formatter = formatter(for: format, in: timeZone)
            if let date = formatter.date(from: string) {
                return date
            }
        }
        throw DataStoreError
            .invalidDateFormat(formats.joined(separator: " | "))
    }

    @usableFromInline
    /// Turn a `Foundation.Date` into a `String`
    /// - Parameters:
    ///   - date: The `Foundation.Date` to be converted to `String` form.
    ///   - formats: Any formats in `String` form that you want to check.
    ///   - timeZone: The `TimeZone` used by the `DateFormatter` when converted.
    ///               Default is `.utc` a.k.a. `TimeZone(abbreviation: "UTC")`
    /// - Returns: The `String` representation of the `date` formatted according to the `format` argument..
    internal static func string(
        from date: Foundation.Date,
        with format: String,
        in timeZone: TimeZone = .utc
    ) -> String {
        let formatter = formatter(for: format, in: timeZone)
        let string = formatter.string(from: date)
        return string
    }
}
