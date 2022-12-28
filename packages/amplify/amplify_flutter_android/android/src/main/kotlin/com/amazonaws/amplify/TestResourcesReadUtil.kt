// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify

import com.google.gson.Gson

fun <T> readMapFromFile(dir: String, path: String, clazz: Class<T>): T {
    val filePath = "$dir/$path"
    val jsonFile = ClassLoader.getSystemResource(filePath).readText()
    return Gson().fromJson(jsonFile, clazz)
}
