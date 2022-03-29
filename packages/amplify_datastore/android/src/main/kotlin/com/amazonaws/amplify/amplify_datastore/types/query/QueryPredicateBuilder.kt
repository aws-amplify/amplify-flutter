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

import com.amazonaws.amplify.amplify_datastore.util.safeCastToList
import com.amazonaws.amplify.amplify_datastore.util.safeCastToMap
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.annotations.BelongsTo
import com.amplifyframework.core.model.query.predicate.QueryField
import com.amplifyframework.core.model.query.predicate.QueryPredicate
import com.amplifyframework.core.model.query.predicate.QueryPredicateGroup
import com.amplifyframework.core.model.query.predicate.QueryPredicateOperation
import com.amplifyframework.core.model.query.predicate.QueryPredicateOperation.not
import com.amplifyframework.core.model.query.predicate.QueryPredicates

class QueryPredicateBuilder {
    companion object {
        /**
         * Use only within [QueryOptionsBuilder]
         */
        @JvmStatic
        fun fromSerializedMap(serializedMap: Map<String, Any>?, modelSchema: ModelSchema?): QueryPredicate? {
            if (serializedMap == null) {
                return null
            }

            if (serializedMap.containsKey("queryPredicateOperation")) {
                val queryPredicateOperationMap: Map<String, Any> =
                    serializedMap["queryPredicateOperation"].safeCastToMap()!!
                var field = queryPredicateOperationMap["field"] as String

                if (modelSchema?.associations?.containsKey(field) == true) {
                    val association = modelSchema.associations.getValue(field)

                    if (BelongsTo::class.java.simpleName.equals(association.name)) {
                        field = modelSchema.associations.getValue(field).targetName
                    }
                }

                val queryField: QueryField = QueryField.field(field)
                val queryFieldOperatorMap: Map<String, Any> =
                    queryPredicateOperationMap["fieldOperator"].safeCastToMap()!!
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
                        queryFieldOperatorMap["end"] as Comparable<Any?>?
                    )
                    "begins_with" -> return queryField.beginsWith(operand as String)
                }
            }

            if (serializedMap.containsKey("queryPredicateGroup")) {
                val queryPredicateGroupMap: Map<String, Any> =
                    serializedMap["queryPredicateGroup"].safeCastToMap()!!
                var predicates: List<QueryPredicate> =
                    queryPredicateGroupMap["predicates"].safeCastToList<Map<String, Any>>()
                        ?.map { fromSerializedMap(it, modelSchema)!! }!!
                var resultQueryPredicate: QueryPredicateGroup? = null
                // The first predicate in the list is either predicateOperation or predicateGroup. We need
                // to know which one so that we can cast it appropriately and call the `and` or `not` method
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
                        "not" -> {
                            resultQueryPredicate = not(predicates[0] as QueryPredicateOperation<*>)
                            return resultQueryPredicate // We don't have more query predicates for `not` operation type
                        }
                    }
                } else { // has to be a QueryPredicateGroup
                    resultQueryPredicate = predicates[0] as QueryPredicateGroup
                    predicates = predicates.drop(1)
                }

                when (queryPredicateGroupMap["type"]) {
                    "and" -> {
                        predicates.forEach {
                            resultQueryPredicate = resultQueryPredicate!!.and(it)
                        }
                    }
                    "or" -> {
                        predicates.forEach {
                            resultQueryPredicate = resultQueryPredicate!!.or(it)
                        }
                    }
                    "not" -> {
                        // Not operator cannot contain a list of predicates, but just one.
                        if (predicates.isNotEmpty()) {
                            throw IllegalArgumentException(
                                "More than one predicates added in the `not` queryPredicate operation." +
                                    " Predicates Size: " + predicates.size
                            )
                        }
                        resultQueryPredicate =
                            QueryPredicateGroup.not(resultQueryPredicate as QueryPredicateGroup)
                    }
                }

                return resultQueryPredicate
            }

            if (serializedMap.containsKey("queryPredicateConstant")) {
                val queryPredicateConstant: Map<String, Any> =
                    serializedMap["queryPredicateConstant"].safeCastToMap()!!

                when (queryPredicateConstant["type"]) {
                    "all" -> return QueryPredicates.all()
                }
            }

            return null
        }

        @JvmStatic
        fun fromSerializedMap(serializedMap: Map<String, Any>?): QueryPredicate? {
            return fromSerializedMap(serializedMap, null)
        }
    }
}
