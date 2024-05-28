//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify

extension Array where Element: Model {

    /// If the models are equal in terms of their sort order (`compare` is `nil`), return the order based on the sort
    /// order, such as `true` for ascending and `false` for descending.
    mutating func sortModels(by sortBy: QuerySortDescriptor, modelSchema: ModelSchema) {
        sort {
            modelSchema.comparator(model1: $0, model2: $1, sortBy: sortBy) ?? (sortBy.order == .ascending)
        }
    }
}

enum ModelValueCompare<T: Comparable> {
    case bothNil
    case leftNil(value2: T)
    case rightNil(value1: T)
    case values(value1: T, value2: T)

    init(value1Optional: T?, value2Optional: T?) {
        switch (value1Optional, value2Optional) {
        case (nil, nil):
            self = .bothNil
        case (nil, .some(let val2)):
            self = .leftNil(value2: val2)
        case (.some(let val1), nil):
            self = .rightNil(value1: val1)
        case (.some(let val1), .some(let val2)):
            self = .values(value1: val1, value2: val2)
        }
    }

    /// Return `true` when they are in the correct order. For example, if ascending and the left value is less than
    /// right value, then return `true`. If descending and the left value is larger than the right
    /// value, return `true`. Treat `nil` values as less than non `nil` values. If the values are both nil or equal,
    /// then return `nil`
    func sortComparator(sortOrder: QuerySortOrder) -> Bool? {
        switch self {
        case .bothNil:
            return nil
        case .leftNil:
            return sortOrder == .ascending
        case .rightNil:
            return sortOrder == .descending
        case .values(let value1, let value2):
            if value1 == value2 {
                return nil
            } else {
                return sortOrder == .ascending ? value1 < value2 : value1 > value2
            }
        }
    }
}

extension ModelSchema {

    /// Compares two model's specified by the field and returns the sort direction based on the `sortBy` sort direction.
    ///
    /// Models are compared with basic operators on their field values when the field type corresponds to a `Comparable`
    /// type such as String, Int, Double, Date. When the field cannot be compared using the basic operators, it will be
    /// turned to its String or Int representation for the comparison. For example, EnumPersistable's String
    /// value and bool's Int value are used instead. For Bool, this means `nil` is less than `false`, and `false`
    /// is less than `true`.
    ///
    /// `nil` or non-existent values (values which do not exist on the model instance) are treated as less than the
    /// values which do exist/non-nil. This returns true when sort is ascending (false if descending) when the
    /// `model1`'s field value is `nil` and `model2`'s field value is some value.
    ///
    /// Sorting on field types such as `.embedded`, `.embeddedCollection`, `.model`, `.collection`
    /// is undetermined behavior and is currently not supported.
    ///
    /// - Note: Maintainers need to keep this utility updated when new field types are added.
    ///
    /// - Parameters:
    ///   - model1: model instance to be compared
    ///   - model2: model instance to be compared
    ///   - sortBy: The field and direction used to compare the two models
    /// - Returns: The resulting comparison between the two models based on `sortBy`
    // swiftlint:disable:next cyclomatic_complexity
    func comparator(model1: Model,
                    model2: Model,
                    sortBy: QuerySortDescriptor) -> Bool? {
        let fieldName = sortBy.fieldName
        let sortOrder = sortBy.order
        guard let modelField = field(withName: fieldName) else {
            return false
        }
        let value1 = model1[fieldName] ?? nil
        let value2 = model2[fieldName] ?? nil
        switch modelField.type {
        case .string:
            guard let value1Optional = value1 as? String?, let value2Optional = value2 as? String? else {
                return false
            }
            return ModelValueCompare(value1Optional: value1Optional,
                                     value2Optional: value2Optional)
                .sortComparator(sortOrder: sortOrder)
        case .int, .timestamp:
            if let value1Optional = value1 as? Int?, let value2Optional = value2 as? Int? {
                return ModelValueCompare(value1Optional: value1Optional,
                                         value2Optional: value2Optional)
                    .sortComparator(sortOrder: sortOrder)
            }

            if let value1Optional = value1 as? Int64?, let value2Optional = value2 as? Int64? {
                return ModelValueCompare(value1Optional: value1Optional,
                                         value2Optional: value2Optional)
                    .sortComparator(sortOrder: sortOrder)
            }

            return false
        case .double:
            guard let value1Optional = value1 as? Double?, let value2Optional = value2 as? Double? else {
                return false
            }
            return ModelValueCompare(value1Optional: value1Optional,
                                     value2Optional: value2Optional)
                .sortComparator(sortOrder: sortOrder)

        case .date:
            guard let value1Optional = value1 as? Temporal.Date?, let value2Optional = value2 as? Temporal.Date? else {
                return false
            }
            return ModelValueCompare(value1Optional: value1Optional,
                                     value2Optional: value2Optional)
                .sortComparator(sortOrder: sortOrder)
        case .dateTime:
            guard let value1Optional = value1 as? Temporal.DateTime?,
                  let value2Optional = value2 as? Temporal.DateTime? else {
                return false
            }
            return ModelValueCompare(value1Optional: value1Optional,
                                     value2Optional: value2Optional)
                .sortComparator(sortOrder: sortOrder)

        case .time:
            guard let value1Optional = value1 as? Temporal.Time?, let value2Optional = value2 as? Temporal.Time? else {
                return false
            }
            return ModelValueCompare(value1Optional: value1Optional,
                                     value2Optional: value2Optional)
                .sortComparator(sortOrder: sortOrder)
        case .bool:
            guard let value1Optional = value1 as? Bool?, let value2Optional = value2 as? Bool? else {
                return false
            }
            return ModelValueCompare(value1Optional: value1Optional?.intValue,
                                     value2Optional: value2Optional?.intValue)
                .sortComparator(sortOrder: sortOrder)
        case .enum:
            // swiftlint:disable syntactic_sugar
            guard case .some(Optional<Any>.some(let value1Optional)) = value1,
                  case .some(Optional<Any>.some(let value2Optional)) = value2 else {
                  if value1 == nil && value2 != nil {
                      return sortOrder == .ascending
                  } else if value1 != nil && value2 == nil {
                      return sortOrder == .descending
                  }
                  return false
            }
            // swiftlint:enable syntactic_sugar
            let enumValue1Optional = (value1Optional as? EnumPersistable)?.rawValue
            let enumValue2Optional = (value2Optional as? EnumPersistable)?.rawValue
            return ModelValueCompare(value1Optional: enumValue1Optional,
                                     value2Optional: enumValue2Optional)
                .sortComparator(sortOrder: sortOrder)
        case .embedded, .embeddedCollection, .model, .collection:
            // Behavior is undetermined
            log.warn("Sorting on field type \(modelField.type) is unsupported")
            return false
        }
    }
}

extension ModelSchema: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.dataStore.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
