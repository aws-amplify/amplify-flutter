/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

package com.amazonaws.amplify.amplify_datastore.types.query

import com.amplifyframework.core.model.query.predicate.QueryField
import com.amplifyframework.core.model.query.predicate.QueryPredicate
import com.amplifyframework.core.model.query.predicate.QueryPredicateGroup
import com.amplifyframework.core.model.query.predicate.QueryPredicateOperation

class QueryPredicateBuilder {
    companion object {
        @JvmStatic
        fun fromSerializedMap(serializedMap: Map<String, Any>?): QueryPredicate? {
            if (serializedMap == null) {
                return null
            }
            if (serializedMap.containsKey("queryPredicateOperation")) {
                val queryPredicateOperationMap: Map<String, Any> =
                        serializedMap["queryPredicateOperation"] as Map<String, Any>
                val field = queryPredicateOperationMap["field"] as String
                val queryField: QueryField = QueryField.field(field)
                val queryFieldOperatorMap: Map<String, Any> =
                        queryPredicateOperationMap["fieldOperator"] as Map<String, Any>
                val operand: Any? = queryFieldOperatorMap["value"]
                when (queryFieldOperatorMap["operatorName"]) {
                    "equal" -> return queryField.eq(operand)
                    "not_equal" -> return queryField.ne(operand)
                    "less_or_equal" -> return queryField.le(operand as Comparable<Any?>?)
                    "less_than" -> return queryField.lt(operand as Comparable<Any?>?)
                    "greater_or_equal" -> return queryField.ge(operand as Comparable<Any?>?)
                    "greater_than" -> return queryField.gt(operand as Comparable<Any?>?)
                    "contains" -> return queryField.contains(operand as String)
                    "between" -> return queryField.between(
                            queryFieldOperatorMap["start"] as Comparable<Any?>?,
                            queryFieldOperatorMap["end"] as Comparable<Any?>?)
                    "begins_with" -> return queryField.beginsWith(operand as String)
                }
            }

            if (serializedMap.containsKey("queryPredicateGroup")) {
                val queryPredicateGroupMap =
                        serializedMap["queryPredicateGroup"] as Map<String, Any>
                var predicates: List<QueryPredicate> =
                        (queryPredicateGroupMap["predicates"] as List<Map<String, Any>>).map { queryPredicate ->
                            fromSerializedMap(queryPredicate)!!
                        }
                var resultQueryPredicate: QueryPredicateGroup? = null
                if (predicates[0] is QueryPredicateOperation<*>) {
                    when (queryPredicateGroupMap["type"]) {
                        "and" -> {
                            resultQueryPredicate =
                                    (predicates[0] as QueryPredicateOperation<*>).and(predicates[1])
                            predicates = predicates.drop(2)
                        }
                        "or" -> {
                            resultQueryPredicate =
                                    (predicates[0] as QueryPredicateOperation<*>).or(predicates[1])
                            predicates = predicates.drop(2)
                        }
                        "not" -> print("TODO") // TODO
                    }
                } else { // has to be a QueryPredicateGroup
                    resultQueryPredicate = predicates[0] as QueryPredicateGroup
                    predicates = predicates.drop(1)
                }

                when (queryPredicateGroupMap["type"]) {
                    "and" -> {
                        predicates.forEach { predicate ->
                            resultQueryPredicate = resultQueryPredicate!!.and(predicate)
                        }
                    }
                    "or" -> {
                        predicates.forEach { predicate ->
                            resultQueryPredicate = resultQueryPredicate!!.or(predicate)
                        }
                    }
                    "not" -> print("TODO") // TODO
                }

                return resultQueryPredicate
            }

            return null
        }
    }
}
