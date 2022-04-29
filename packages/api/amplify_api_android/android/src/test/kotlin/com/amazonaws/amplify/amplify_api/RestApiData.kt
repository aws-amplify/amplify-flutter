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

package com.amazonaws.amplify.amplify_api

val getSuccessData = "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".toByteArray()

val toStoreData = "{\"name\":\"Mow the lawn\"}".toByteArray()

val postSuccessData =
    "{\"success\": \"post call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}".toByteArray()

val putSuccessData =
    "{\"success\": \"put call succeed!\",\"body\": {\"name\": \"Mow the lawn\"}}".toByteArray()

val deleteSuccessData = "{\"success\": \"delete call succeed!\",\"url\": \"items\"}".toByteArray()

val getFailedData = "{\"error\":\"get call failed!\"}".toByteArray()
