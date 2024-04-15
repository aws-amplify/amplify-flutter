//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

// swiftlint:disable cyclomatic_complexity
extension ModelSchema {

    private static let serviceUpdatedFields: Set = ["updatedAt", "createdAt"]

    /// Compare two `Model` based on a given `ModelSchema`
    /// Returns true if equal, false otherwise
    /// Currently, schemas where system timestamps fields (createdAt, updatedAt)
    /// are renamed using with `@model`'s `timestamps` attribute and explicitly
    /// added to the input schema are not supported by this check since they are not
    /// marked as "read-only" fields and will fail the check when the service generates
    /// and returns the value of `createdAt` or `updatedAt`.
    /// for e.g.
    /// type Post @model(timestamps:{createdAt: "createdOn", updatedAt: "updatedOn"}) {
    ///  id: ID!
    ///  title: String!
    ///  tags: [String!]!
    ///  createdOn: AWSDateTime
    ///  updatedOn: AWSDateTime
    /// }
    func compare(_ model1: Model, _ model2: Model) -> Bool {
        let modelType1 = ModelRegistry.modelType(from: model1.modelName)
        let modelType2 = ModelRegistry.modelType(from: model2.modelName)
        if modelType1 != modelType2 {
            // no need to compare models as they have different type
            return false
        }

        for (fieldName, modelField) in fields {
            // read only fields or fields updated from the service are skipped for equality check
            // examples of such fields include `createdAt`, `updatedAt` and `coverId` in `Record`
            if modelField.isReadOnly || ModelSchema.serviceUpdatedFields.contains(modelField.name) {
                continue
            }

            let value1 = model1[fieldName] ?? nil
            let value2 = model2[fieldName] ?? nil

            // check equality for different `ModelFieldType`
            switch modelField.type {
            case .string:
                guard let value1Optional = value1 as? String?, let value2Optional = value2 as? String? else {
                    return false
                }
                if !compare(value1Optional, value2Optional) {
                    return false
                }
            case .int:
                if let value1Optional = value1 as? Int?, let value2Optional = value2 as? Int? {
                    if !compare(value1Optional, value2Optional) {
                        return false
                    }
                }
                if let value1Optional = value1 as? Int64?, let value2Optional = value2 as? Int64? {
                    if !compare(value1Optional, value2Optional) {
                        return false
                    }
                }
                return false
            case .double:
                guard let value1Optional = value1 as? Double?, let value2Optional = value2 as? Double? else {
                    return false
                }
                if !compare(value1Optional, value2Optional) {
                    return false
                }
            case .date:
                guard let value1Optional = value1 as? Temporal.Date?,
                      let value2Optional = value2 as? Temporal.Date? else {
                    return false
                }
                if !compare(value1Optional, value2Optional) {
                    return false
                }
            case .dateTime:
                guard let value1Optional = value1 as? Temporal.DateTime?,
                      let value2Optional = value2 as? Temporal.DateTime? else {
                    return false
                }
                if !compare(value1Optional, value2Optional) {
                    return false
                }
            case .time:
                guard let value1Optional = value1 as? Temporal.Time?,
                      let value2Optional = value2 as? Temporal.Time? else {
                    return false
                }
                if !compare(value1Optional, value2Optional) {
                    return false
                }
            case .timestamp:
                guard let value1Optional = value1 as? String?, let value2Optional = value2 as? String? else {
                    return false
                }
                if !compare(value1Optional, value2Optional) {
                    return false
                }
            case .bool:
                guard let value1Optional = value1 as? Bool?, let value2Optional = value2 as? Bool? else {
                    return false
                }
                if !compare(value1Optional?.intValue, value2Optional?.intValue) {
                    return false
                }
            case .enum:
                // swiftlint:disable syntactic_sugar
                guard case .some(Optional<Any>.some(let value1Optional)) = value1,
                      case .some(Optional<Any>.some(let value2Optional)) = value2 else {
                    if value1 == nil && value2 == nil {
                        continue
                    }
                    return false
                }
                // swiftlint:enable syntactic_sugar
                let enumValue1Optional = (value1Optional as? EnumPersistable)?.rawValue
                let enumValue2Optional = (value2Optional as? EnumPersistable)?.rawValue
                if !compare(enumValue1Optional, enumValue2Optional) {
                    return false
                }
            case .embedded, .embeddedCollection:
                do {
                    if let encodable1 = value1 as? Encodable,
                       let encodable2 = value2 as? Encodable {
                        let json1 = try SQLiteModelValueConverter.toJSON(encodable1)
                        let json2 = try SQLiteModelValueConverter.toJSON(encodable2)
                        if !compare(json1, json2) {
                            return false
                        }
                    }
                } catch {
                    continue
                }
            // only the first level of data is used for comparison of models
            // and deeper levels(associated models/connections) are ignored
            // e.g. The graphql request contains only the information needed in the graphql variables which is sent to
            // the service. In such a case, the request model may have multiple levels of data while the response
            // model will have just one.
            case .model, .collection:
                continue
            }
        }
        return true
    }

    private func compare<T: Comparable>(_ value1: T?, _ value2: T?) -> Bool {
        switch (value1, value2) {
        case(nil, nil):
            return true
        case(nil, .some):
            return false
        case (.some, nil):
            return false
        case (.some(let val1), .some(let val2)):
            return val1 == val2 ? true : false
        }
    }
}
