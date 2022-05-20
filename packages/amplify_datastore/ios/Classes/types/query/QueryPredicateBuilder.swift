/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import Flutter
import Foundation
import Amplify

public enum QueryPredicateBuilder {
    static func fromSerializedMap(_ serializedMap: [String: Any]?) throws -> QueryPredicate {
        guard let data = serializedMap else {
            return QueryPredicateConstant.all
        }

        if let queryPredicateOperationMap = data["queryPredicateOperation"] as? [String: Any] {
            if let fieldValue = queryPredicateOperationMap["field"] as? String,
               let queryFieldOperatorMap = queryPredicateOperationMap["fieldOperator"] as? [String: Any],
               let operatorName = queryFieldOperatorMap["operatorName"] as? String
            {
                let operand = convertToAmplifyPersistable(value: queryFieldOperatorMap["value"])
                let queryField = field(fieldValue)
                switch operatorName {
                case "equal":
                    if operand == nil,
                     let operands = queryFieldOperatorMap["value"] as? [[String: Any]] {
                        return try convertIdentifierFieldOperatorToPredicate(
                            operands: operands,
                            field: queryField,
                            isEqualOperator: true
                        )
                    }
                    return queryField.eq(operand)
                case "not_equal":
                    if operand == nil,
                     let operands = queryFieldOperatorMap["value"] as? [[String: Any]] {
                        return try convertIdentifierFieldOperatorToPredicate(
                            operands: operands,
                            field: queryField,
                            isEqualOperator: false
                        )
                    }
                    return queryField.ne(operand)
                case "less_or_equal":
                    return queryField.le(operand!)
                case "less_than":
                    return queryField.lt(operand!)
                case "greater_or_equal":
                    return queryField.ge(operand!)
                case "greater_than":
                    return queryField.gt(operand!)
                case "contains":
                    return queryField.contains(operand as! String)
                case "between":
                    return queryField.between(start: convertToAmplifyPersistable(value: queryFieldOperatorMap["start"])!,
                                              end: convertToAmplifyPersistable(value: queryFieldOperatorMap["end"])!)
                case "begins_with":
                    return queryField.beginsWith(operand as! String)
                default:
                    throw DataStoreError.decodingError("Received invalid operator name \(operatorName) in query operator. ",
                                                       "Check the values that are being passed from Dart.")
                }
            } else {
                throw DataStoreError.decodingError("Received invalid serialized query predicate operation. ",
                                                   "Check the values that are being passed from Dart.")
            }
        }

        if let queryPredicateGroupMap = data["queryPredicateGroup"] as? [String: Any] {
            let serializedPredicates = queryPredicateGroupMap["predicates"] as! [[String: Any]]
            var predicates = try serializedPredicates.map { try fromSerializedMap($0) }
            var resultQueryPredicate: QueryPredicate
            if predicates[0] is QueryPredicateOperation {
                switch queryPredicateGroupMap["type"] as! String {
                case "and":
                    resultQueryPredicate = (predicates[0] as! QueryPredicateOperation).and(predicates[1])
                    predicates = Array(predicates.dropFirst(2))
                case "or":
                    resultQueryPredicate = (predicates[0] as! QueryPredicateOperation).or(predicates[1])
                    predicates = Array(predicates.dropFirst(2))
                case "not":
                    resultQueryPredicate = not(predicates[0] as! QueryPredicateOperation)
                    return resultQueryPredicate
                default:
                    throw DataStoreError.decodingError("Received invalid query predicate group type " +
                                                        "\(String(describing: queryPredicateGroupMap["type"]))",
                                                       "Check the values that are being passed from Dart.")
                }
            } else { // has to be a QueryPredicateGroup
                resultQueryPredicate = predicates[0] as! QueryPredicateGroup
                predicates = Array(predicates.dropFirst(1))
            }

            // Now iterate over all other predicates and add
            switch queryPredicateGroupMap["type"] as! String {
            case "and":
                predicates.forEach { predicate in
                    resultQueryPredicate = (resultQueryPredicate as! QueryPredicateGroup).and(predicate)
                }
            case "or":
                predicates.forEach { predicate in
                    resultQueryPredicate = (resultQueryPredicate as! QueryPredicateGroup).or(predicate)
                }
            case "not":
                if !predicates.isEmpty {
                    throw DataStoreError.decodingError("Received more than one query predicates for group type not.",
                                                       "Check the values that are being passed from Dart.")
                }
                resultQueryPredicate = not(resultQueryPredicate as! QueryPredicateGroup)
            default:
                throw DataStoreError.decodingError("Received invalid query predicate group type " +
                                                    "\(String(describing: queryPredicateGroupMap["type"]))",
                                                   "Check the values that are being passed from Dart.")
            }
            return resultQueryPredicate
        }

        if let queryPredicateConstant = data["queryPredicateConstant"] as? [String: Any] {
            switch queryPredicateConstant["type"] as! String {
            case "all":
                return QueryPredicateConstant.all
            default:
                throw DataStoreError.decodingError("Received invalid query predicate constant type " +
                                                    "\(String(describing: queryPredicateConstant["type"]))",
                                                   "Check the values that are being passed from Dart.")
            }
        }

        if let queryByIdentifierOperationMap = data["queryByIdentifierOperation"] as? [String: Any] {
            let operatorName = queryByIdentifierOperationMap["operatorName"] as? String
            guard let operands = queryByIdentifierOperationMap["value"] as? [[String: Any]] else {
                throw DataStoreError.decodingError("A queryByIdentifierOperation must provide a list of operands. ",
                                                   "Check the values that are being passed from Dart.")
            }

            switch(operatorName) {
            case "equal":
                return try convertIdentifierOperatorToPredicateGroup(operands: operands, isEqualOpeartor: true)
            case "not_equal":
                return try convertIdentifierOperatorToPredicateGroup(operands: operands, isEqualOpeartor: false)
            default:
                throw DataStoreError.decodingError("Received invalid serialized query by identifier operation. ",
                                                   "Check the values that are being passed from Dart.")
            }
        }

        throw DataStoreError.decodingError("Received invalid serialization for query predicates.",
                                           "Check the values that are being passed from Dart.")
    }

    static func convertIdentifierFieldOperatorToPredicate(operands: [[String: Any]], field: QueryField, isEqualOperator: Bool) throws -> QueryPredicate {
        let identifierFields = try convertToModelIdentifierFields(values: operands)
        let operand = FlutterSerializedModel.Identifier.make(fields: identifierFields).stringValue

        return isEqualOperator ? field.eq(operand) : field.ne(operand)
    }

    static func convertIdentifierOperatorToPredicateGroup(operands: [[String: Any]], isEqualOpeartor: Bool) throws -> QueryPredicate {
        let identifierFields = try convertToModelIdentifierFields(values: operands)
        var predicates: [QueryPredicate] = identifierFields.map {
            let queryFiled = field($0.name)
            let value = convertToAmplifyPersistable(value: $0.value)
            if (isEqualOpeartor) {
                return queryFiled.eq(value)
            }

            return queryFiled.ne(value)
        }

        if (predicates.count == 1) {
            return predicates[0]
        }

        var predicateGroup = (predicates[0] as! QueryPredicateOperation).and(predicates[1])
        predicates = Array(predicates.dropFirst(2))

        predicates.forEach {
            predicateGroup = predicateGroup.and($0)
        }

        return predicateGroup
    }
}
