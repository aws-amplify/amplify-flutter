//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SQLite

internal extension Bool {

    var intValue: Int {
        return self ? Int(1) : Int(0)
    }

}

public struct SQLiteModelValueConverter: ModelValueConverter {

    public typealias SourceType = Any?
    public typealias TargetType = Binding?

    // swiftlint:disable:next cyclomatic_complexity
    public static func convertToTarget(from source: Any?, fieldType: ModelFieldType) throws -> Binding? {
        guard let value = source else {
            return nil
        }
        switch fieldType {
        case .string:
            return value as? String
        case .int:
            if let intValue = value as? Int {
                return intValue
            }
            if let int64Value = value as? Int64 {
                return int64Value
            }
            return nil
        case .double:
            return value as? Double
        case .date, .dateTime, .time:
            return (value as? TemporalSpec)?.iso8601String
        case .timestamp:
            return value as? Int
        case .bool:
            return (value as? Bool)?.intValue
        case .enum:
            return (value as? EnumPersistable)?.rawValue
        case .model:
            if let modelInstance = (value as? Model),
               let modelSchema = ModelRegistry.modelSchema(from: modelInstance.modelName) {
                return modelInstance.identifier(schema: modelSchema).stringValue
            }
            return nil
        case .collection:
            // collections are not converted to SQL Binding since they represent a model association
            // and the foreign key lives on the other side of the association
            return nil
        case .embedded, .embeddedCollection:
            if let encodable = value as? Encodable {
                return try SQLiteModelValueConverter.toJSON(encodable)
            }
            return nil
        }
    }

    // swiftlint:disable:next cyclomatic_complexity
    public static func convertToSource(from target: Binding?, fieldType: ModelFieldType) throws -> Any? {
        guard let value = target else {
            return nil
        }
        switch fieldType {
        case .string, .date, .dateTime, .time:
            return value as? String
        case .int:
            return value as? Int64
        case .double:
            return value as? Double
        case .timestamp:
            return value as? Int64
        case .bool:
            if let intValue = value as? Int64 {
                return Bool.fromDatatypeValue(intValue)
            }
            return nil
        case .enum:
            return value as? String
        case .embedded, .embeddedCollection:
            if let stringValue = value as? String {
                return try SQLiteModelValueConverter.fromJSON(stringValue)
            }
            return nil
        // models and collections are handled at the SQL statement layer since they need custom logic
        // from the SQL result. See Statement+Model.swift for details
        case .model:
            return nil
        case .collection:
            return nil
        }
    }

}
