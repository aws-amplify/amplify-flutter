/*
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
 */

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify.dart';

import 'types/admin_create_user_response.dart';
import 'types/delete_user_response.dart';

const deleteDocument = '''mutation DeleteUser(\$Username: String!) {
  deleteUser(Username: \$Username) {
    error
    success
  }
}''';

const adminCreateUserDocument =
    '''mutation DeleteUser(\$Username: String!, \$TempPassword: String!) {
  adminCreateUser(Username: \$Username, TempPassword: \$TempPassword) {
    error
    success
  }
}''';

Future<DeleteUserResponse> deleteUser(String username) async {
  var res = await Amplify.API
      .mutate(
          request: GraphQLRequest<String>(
              document: deleteDocument,
              variables: <String, dynamic>{'Username': username}))
      .response;
  return DeleteUserResponse.fromJson(res.data);
}

Future<AdminCreateUserResponse> adminCreateUser(
    String username, String tempPassword) async {
  var res = await Amplify.API
      .mutate(
          request: GraphQLRequest<String>(
              document: adminCreateUserDocument,
              variables: <String, dynamic>{
            'Username': username,
            'TempPassword': tempPassword
          }))
      .response;
  return AdminCreateUserResponse.fromJson(res.data);
}
