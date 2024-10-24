// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';

import 'asf_test.dart' as asf_tests;
import 'mfa_email_optional_test.dart' as mfa_email_optional_tests;
import 'mfa_email_required_test.dart' as mfa_email_required_tests;
import 'mfa_email_totp_optional_test.dart' as mfa_email_totp_optional_tests;
import 'mfa_email_totp_required_test.dart' as mfa_email_totp_required_tests;
import 'mfa_sms_email_optional_test.dart' as mfa_sms_email_optional_tests;
import 'mfa_sms_email_required_test.dart' as mfa_sms_email_required_tests;
import 'mfa_sms_test.dart' as mfa_sms_tests;
import 'mfa_sms_totp_optional_test.dart' as mfa_sms_totp_optional_tests;
import 'mfa_sms_totp_required_test.dart' as mfa_sms_totp_required_tests;
import 'mfa_totp_optional_test.dart' as mfa_totp_optional_tests;
import 'mfa_totp_required_test.dart' as mfa_totp_required_tests;
import 'mfa_username_login_required_test.dart'
    as mfa_username_login_required_tests;
import 'test_runner.dart';

void main() async {
  testRunner.setupTests();

  group('amplify_auth_cognito', () {
    asf_tests.main();
    mfa_username_login_required_tests.main();
    mfa_sms_tests.main();
    mfa_sms_totp_optional_tests.main();
    mfa_sms_totp_required_tests.main();
    mfa_totp_optional_tests.main();
    mfa_totp_required_tests.main();
    mfa_email_optional_tests.main();
    mfa_email_required_tests.main();
    mfa_sms_email_optional_tests.main();
    mfa_sms_email_required_tests.main();
    mfa_email_totp_optional_tests.main();
    mfa_email_totp_required_tests.main();
    // confirm_sign_in_tests.main();
    // confirm_sign_up_tests.main();
    // custom_auth_tests.main();
    // custom_authorizer_tests.main();
    // delete_user_tests.main();
    // device_tracking_tests.main();
    // federated_sign_in_tests.main();
    // fetch_auth_session_tests.main();
    // get_current_user_tests.main();
    // hosted_ui_webview_tests.main();
    // hub_events_tests.main();
    // native_auth_bridge_tests.main();
    // reset_password_tests.main();
    // security_tests.main();
    // sign_in_tests.main();
    // sign_out_tests.main();
    // sign_up_tests.main();
    // update_password_tests.main();
    // user_attributes_tests.main();
    // version_upgrade_tests.main();
  });
}
