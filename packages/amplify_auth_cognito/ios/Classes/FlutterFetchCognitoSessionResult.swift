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
import Amplify
import AWSPluginsCore

struct FlutterFetchCognitoSessionResult {
  var isSignedIn: Bool
  var userSub: String
  var identityId: String
  var credentials: [String: String]
  var userPoolTokens: [String: String]
    

  init(res: AmplifyOperation<AuthFetchSessionRequest, AuthSession, AuthError>.OperationResult) throws  {
    do {
        let session = try res.get()
        self.isSignedIn = session.isSignedIn
        self.identityId = try getIdentityId(session: session)
        self.userSub = try getUserSub(session: session)
        self.credentials = try getCredentials(session: session)
        self.userPoolTokens = try getTokens(session: session)
    } catch  {
        throw error as! AuthError
    }
  }
      
  func toJSON() -> Dictionary<String, Any> {
    var result: Dictionary<String, Any> = [:]
    result["isSignedIn"] = self.isSignedIn
    result["credentials"] = self.credentials
    result["identityId"] = self.identityId
    if (!self.userPoolTokens.isEmpty) {
        result["tokens"] = self.userPoolTokens
    }
    if (self.userSub != "") {
        result["userSub"] = self.userSub
    }
    return result
  }}

  func getUserSub(session: AuthSession) throws -> String {
    var sub: String = ""
    if let identityProvider = session as? AuthCognitoIdentityProvider {
      do {
        sub = try identityProvider.getUserSub().get()
      } catch {
        if (error is AuthError) {
          switch error as! AuthError {
            case .signedOut:
              print("User is signed out")
              return sub
            default:
              throw error as! AuthError
          }
        }
      }
    }
    return sub
  }

  func getIdentityId(session: AuthSession) throws -> String {
    var id: String = ""
    if let identityProvider = session as? AuthCognitoIdentityProvider {
      do {
        id = try identityProvider.getIdentityId().get()
      } catch {
         throw error as! AuthError
      }
    }
    return id
  }

  func getCredentials(session: AuthSession) throws -> [String: String] {
    var credentialMap: [String: String] = [:]

    if let awsCredentialsProvider = session as? AuthAWSCredentialsProvider {
      let creds =  try awsCredentialsProvider.getAWSCredentials().get()
      credentialMap["awsAccessKey"] = creds.accessKey
      credentialMap["awsSecretKey"] = creds.secretKey
        do {
            let tempCreds = try awsCredentialsProvider.getAWSCredentials().get() as? AuthAWSTemporaryCredentials
            if ((tempCreds?.sessionKey) != nil) {
                credentialMap["sessionToken"] = tempCreds?.sessionKey
            }
        } catch {
            print("Unable to case session token.")
        }
        

    }
    

    
    return credentialMap;
  }

  func getTokens(session: AuthSession) throws -> [String: String] {
    var tokenMap: [String: String] = [:]

    if let cognitoTokenProvider = session as? AuthCognitoTokensProvider {
        do {
            let tokens = try cognitoTokenProvider.getCognitoTokens().get()
            tokenMap["accessToken"] = tokens.accessToken
            tokenMap["idToken"] = tokens.idToken
            tokenMap["refreshToken"] = tokens.refreshToken
        } catch {
            tokenMap["error"] = "You are currently signed out."
        }
    }
    return tokenMap;
  }
  
