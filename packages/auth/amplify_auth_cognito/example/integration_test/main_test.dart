// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'confirm_sign_in_test.dart' as confirm_sign_in_tests;
import 'confirm_sign_up_test.dart' as confirm_sign_up_tests;
import 'custom_auth_test.dart' as custom_auth_tests;
// import 'custom_authorizer_test.dart' as custom_authorizer_tests;
import 'delete_user_test.dart' as delete_user_tests;
import 'device_tracking_test.dart' as device_tracking_tests;
import 'federated_sign_in_test.dart' as federated_sign_in_tests;
import 'fetch_auth_session_test.dart' as fetch_auth_session_tests;
import 'force_refresh_test.dart' as force_refresh_tests;
import 'get_current_user_test.dart' as get_current_user_tests;
import 'hosted_ui_webview_test.dart' as hosted_ui_webview_tests;
import 'hub_events_test.dart' as hub_events_tests;
import 'mfa_sms_test.dart' as mfa_sms_tests;
import 'reset_password_test.dart' as reset_password_tests;
import 'security_test.dart' as security_tests;
import 'sign_in_test.dart' as sign_in_tests;
import 'sign_out_test.dart' as sign_out_tests;
import 'sign_up_test.dart' as sign_up_tests;
import 'update_password_test.dart' as update_password_tests;
import 'user_attributes_test.dart' as user_attributes_tests;

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_auth_cognito', () {
    confirm_sign_in_tests.main();
    confirm_sign_up_tests.main();
    custom_auth_tests.main();
    // TODO(dnys1): Re-enable when custom authorizer backends are deployed
    // custom_authorizer_tests.main();
    delete_user_tests.main();
    device_tracking_tests.main();
    federated_sign_in_tests.main();
    fetch_auth_session_tests.main();
    force_refresh_tests.main();
    get_current_user_tests.main();
    hosted_ui_webview_tests.main();
    hub_events_tests.main();
    mfa_sms_tests.main();
    reset_password_tests.main();
    security_tests.main();
    sign_in_tests.main();
    sign_out_tests.main();
    sign_up_tests.main();
    update_password_tests.main();
    user_attributes_tests.main();
  });
}
