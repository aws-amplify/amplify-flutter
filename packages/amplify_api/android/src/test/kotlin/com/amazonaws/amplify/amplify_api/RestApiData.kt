package com.amazonaws.amplify.amplify_api

val getSuccessData = "{\"success\":\"get call succeed!\",\"url\":\"/items\"}".toByteArray()

val toStoreData = "{\"name\":\"Mow the lawn\"}".toByteArray()

val postSuccessData = "{\"success\": \"post call succeed!\",\"url\":\"/items?queryParameterA=queryValueA&queryParameterB=queryValueB\",\"body\": {\"name\": \"Mow the lawn\"}}".toByteArray()

val putSuccessData = "{\"success\": \"put call succeed!\",\"body\": {\"name\": \"Mow the lawn\"}}".toByteArray()

val deleteSuccessData = "{\"success\": \"delete call succeed!\",\"url\": \"items\"}".toByteArray()

val getFailedData = "{\"error\":\"get call failed!\"}".toByteArray()