## Custom Data Types

`DataStore > Model > Temporal`

Model-based programming aims to simplify data management on apps by abstracting away the complexities of data persistence from the core logic of the app. Therefore, data types are a critical piece of it.

This module provides types that complements the Swift provided [`Date`](https://developer.apple.com/documentation/foundation/date) with more control over the date granularity when persisting values to a database (i.e. time-only, date-only, date+time).

**Table of Contents**

- [Custom Data Types](#custom-data-types)
  - [1. Temporal](#1-temporal)
    - [1.1. `Temporal.Date`, `Temporal.DateTime`, `Temporal.Time`](#11-temporaldate-temporaldatetime-temporaltime)
    - [1.2. ISO-8601](#12-iso-8601)
    - [1.3. The underlying `Date`](#13-the-underlying-date)
    - [1.4. Operations](#14-operations)
    - [1.5. References](#15-references)

### 1. Temporal

The Swift foundation module provides the [`Date`](https://developer.apple.com/documentation/foundation/date) struct that represents a single point in time and can fit any precision, calendrical system or time zone. While that approach is concise and powerful, when it comes to representing persistent data its flexibility can result in ambiguity (i.e. should only the date portion be used or both date and time).


#### 1.1. `Temporal.Date`, `Temporal.DateTime`, `Temporal.Time`

The `TemporalSpec` protocol was introduced to establish a more strict way to represent dates that make sense in a data persistence context.

#### 1.2. ISO-8601

The temporal implementations rely on a fixed [ISO-8601](https://www.iso.org/iso-8601-date-and-time-format.html) Calendar implementation ([`.iso8601`](https://developer.apple.com/documentation/foundation/calendar/identifier/iso8601)). If a representation of the date is needed in different calendars, use the underlying date object described in the next section.

#### 1.3. The underlying `Date`

Both `DateTime` and `Time` are backed by a [`Date`](https://developer.apple.com/documentation/foundation/date) instance. Therefore, they are compatible with all existing Date APIs from Foundation, including third-party libraries.

#### 1.4. Operations

Swift offers great support for complex date operations using [`Calendar`](https://developer.apple.com/documentation/foundation/calendar), but unfortunately simple use-cases often require several lines of code.

The `TemporalSpec` implementation offers utilities that enable simple date operations to be defined in a readable and idiomatic way.

Time:

```swift
// current time plus 2 hours
let time = Time.now + .hours(2)
```

Date/Time:

```swift
// current date/time 2 weeks ago
let datetime = DateTime.now - .weeks(2)
```

#### 1.5. References

Some resources that inspired types defined here:

- Joda Time: https://www.joda.org/joda-time/
- Ruby on Rails Date API: https://api.rubyonrails.org/classes/Date.html
