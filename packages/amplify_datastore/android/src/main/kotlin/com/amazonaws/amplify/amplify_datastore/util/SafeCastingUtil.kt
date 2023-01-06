// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_datastore.util

@Suppress("UNCHECKED_CAST")
inline fun <reified T : Any> Any?.safeCastToMap() =
    if (this is T)
        this as Map<String, T>
    else null

@Suppress("UNCHECKED_CAST")
inline fun <reified T : Any> Any?.safeCastToList() =
    if (this is List<*> && this.all { it is T })
        this as List<T>
    else null
