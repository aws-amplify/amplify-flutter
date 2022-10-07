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

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'delete_user_test.dart' as delete_user_tests;
import 'federated_sign_in_test.dart' as federated_sign_in;
import 'fetch_session_test.dart' as fetch_session_tests;
import 'force_refresh_test.dart' as force_refresh;
import 'get_current_user_test.dart' as get_current_user_tests;
import 'hub_events_test.dart' as hub_events_tests;
import 'sign_in_sign_out_test.dart' as sign_in_sign_out_tests;
import 'sign_up_test.dart' as sign_up_tests;
import 'update_password_test.dart' as update_password_tests;
import 'user_attributes_test.dart' as user_attributes_tests;

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_auth_cognito', () {
    delete_user_tests.main();
    federated_sign_in.main();
    fetch_session_tests.main();
    force_refresh.main();
    get_current_user_tests.main();
    hub_events_tests.main();
    sign_in_sign_out_tests.main();
    sign_up_tests.main();
    update_password_tests.main();
    user_attributes_tests.main();
  });
}
