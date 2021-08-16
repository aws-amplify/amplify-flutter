package com.amazonaws.amplify.amplify_core

/**
 * Returns `this` as a Map<String, Any?> or throws an
 * [InvalidArgumentsException] if it is not a [Map].
 */
fun Any.asPlatformChannelMap(): HashMap<String, Any?> = this.asMap()

/**
 * Returns `this` as a Map<K, V> or throws an
 * [InvalidArgumentsException] if it cannot be cast.
 */
inline fun <reified K, reified V> Any.asMap(): HashMap<K, V> =
    (this as? Map<*, *>)?.cast() ?: throw InvalidArgumentsException(this)

/**
 * Returns `this` as a [HashMap<K, V>]. Used to centralize
 * casts and make them explicit.
 */
@Suppress("UNCHECKED_CAST")
inline fun <reified K, reified V> Map<*, *>.cast(): HashMap<K, V> =
    this as HashMap<K, V>

/**
 * Returns `this` as an [ArrayList<T>]. Used to centralize
 * casts and make them explicit.
 */
@Suppress("UNCHECKED_CAST")
inline fun <reified T> List<*>.cast(): ArrayList<T> =
    this as ArrayList<T>

/**
 * Thrown when an argument of the wrong type is passed to a function.
 *
 * @param expectedType The expected runtime type.
 */
class InvalidArgumentsException(args: Any?, expectedType: String = "Map<*, *>") :
    Exception("Invalid arguments: expected $expectedType, got ${if (args == null) null else args::class}")
