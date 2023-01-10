// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_secure_storage.amplify_secure_storage

interface KeyValueRepository {
    fun put(dataKey: String, value: String?)
    fun get(dataKey: String): String?
    fun remove(dataKey: String)
}
