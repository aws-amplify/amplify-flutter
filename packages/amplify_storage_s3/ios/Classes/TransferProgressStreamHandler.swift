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

import Foundation

class TransferProgressStreamHandler : NSObject, FlutterStreamHandler {

    var eventSinkMap: [String: FlutterEventSink] = [:]
    
    public func onDownloadProgressEvent(key : String, progress : Progress){
        eventSinkMap[key]?( [progress.completedUnitCount, progress.totalUnitCount] )
    }
    
    public func onDownloadEnd(key : String){
        eventSinkMap[key] = nil
    }
    
    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        eventSinkMap[arguments as! String] = events
        return nil
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        onDownloadEnd(key: arguments as! String)
        return nil
    }

}
