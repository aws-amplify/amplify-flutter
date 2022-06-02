/*
 *
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
 *
 */

package com.amazonaws.amplify

/**
 * Returns `this` as a Map<String, Any?> or throws an
 * [InvalidArgumentsException] if it is not a [Map].
 */
fun Any.asPlatformChannelMap(): Map<String, Any?> = this.asMap()

/**
 * Returns `this` as a Map<K, V> or throws an
 * [InvalidArgumentsException] if it cannot be cast.
 */
inline fun <reified K, reified V> Any.asMap(): Map<K, V> =
    (this as? Map<*, *>)?.cast() ?: throw InvalidArgumentsException(this)

/**
 * Returns `this` as a [HashMap<K, V>]. Used to centralize
 * casts and make them explicit.
 */
@Suppress("UNCHECKED_CAST")
inline fun <reified K, reified V> Map<*, *>.cast(): Map<K, V> =
    this as Map<K, V>

/**
 * Returns `this` as an [ArrayList<T>]. Used to centralize
 * casts and make them explicit.
 */
@Suppress("UNCHECKED_CAST")
inline fun <reified T> List<*>.cast(): List<T> =
    this as List<T>

/**
 * Thrown when an argument of the wrong type is passed to a function.
 *
 * @param expectedType The expected runtime type.
 */
class InvalidArgumentsException(args: Any?, expectedType: String = "Map<*, *>") :
    Exception("Invalid arguments: expected $expectedType, got ${if (args == null) null else args::class}")
