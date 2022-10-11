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

import Amplify
import Flutter
import AmplifyPlugins

class FlutterPrefixResolver : AWSS3PluginPrefixResolver{
    
    var channel: FlutterMethodChannel
    
    init(flutterChannel: FlutterMethodChannel){
        channel = flutterChannel
    }
    
    func resolvePrefix(for accessLevel: StorageAccessLevel,
                       targetIdentityId: String?,
                       completion: @escaping (Result<String, StorageError>) -> Void) {
        
        let accessLevelString : String = accessLevel.serviceAccessPrefix
        
        let args: [String: String?] = [
            "accessLevel" : accessLevelString,
            "targetIdentity" : targetIdentityId
        ]
        
        DispatchQueue.main.async {
            self.channel.invokeMethod("awsS3PluginPrefixResolver", arguments: args) { result in
                do {
                    guard
                        let resultMap: [String: Any] = result as? [String: Any],
                        let isSuccess = resultMap["isSuccess"] as? Bool
                    else {
                        throw StorageError.unknown("Invalid data from Dart PrefixResolver")
                    }
                    
                    if (isSuccess) {
                        guard let prefix = resultMap["prefix"] as? String
                        else {
                            throw StorageError.unknown("Invalid data from Dart PrefixResolver")
                        }
                        completion(.success(prefix))
                    } else {
                        guard let errorMessage = resultMap["errorMessage"] as? String
                        else {
                            throw StorageError.unknown("Invalid data from Dart PrefixResolver")
                        }                        
                        completion(.failure(StorageError.unknown(errorMessage)))
                    }
                } catch {
                    print("Error in prefix resolver information sent from Dart.")
                    completion(.failure( StorageError.unknown("Invalid values setn from dart prefix resolver.")))
                }
            }
        }
    }
}
