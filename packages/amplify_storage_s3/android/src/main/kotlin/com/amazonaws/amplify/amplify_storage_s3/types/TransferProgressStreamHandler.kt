
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

package android.src.main.kotlin.com.amazonaws.amplify.amplify_storage_s3.types

import com.amplifyframework.storage.result.StorageTransferProgress
import io.flutter.plugin.common.EventChannel

class TransferProgressStreamHandler : EventChannel.StreamHandler {

    private var eventSinkMap = mutableMapOf<String, EventChannel.EventSink>()

    public fun onDownloadProgressEvent(key : String, progress : StorageTransferProgress){
        eventSinkMap[key]?.success( listOf(progress.currentBytes, progress.totalBytes) )
    }

    public fun onDownloadEnd(key : String){
        eventSinkMap[key]?.endOfStream()
        eventSinkMap.remove(key)
    }

    // Called automatically
    override fun onListen(arguments: Any?, sink: EventChannel.EventSink) {
        eventSinkMap[arguments as String] = sink
    }

    override fun onCancel(arguments: Any?) {
        if(arguments != null)
            onDownloadEnd(arguments as String)
    }
}