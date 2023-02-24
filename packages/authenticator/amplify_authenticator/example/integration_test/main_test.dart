// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'confirm_sign_up_email_or_phone_test.dart'
    as confirm_sign_up_email_or_phone_tests;
import 'confirm_sign_up_test.dart' as confirm_sign_up_tests;
import 'custom_ui_test.dart' as custom_ui_tests;
import 'reset_password_test.dart' as reset_password_tests;
import 'sign_in_force_new_password_test.dart'
    as sign_in_force_new_password_tests;
import 'sign_in_mfa_test.dart' as sign_in_mfa_tests;
import 'sign_in_with_email_test.dart' as sign_in_with_email_tests;
import 'sign_in_with_phone_test.dart' as sign_in_with_phone_tests;
import 'sign_in_with_username_test.dart' as sign_in_with_username_tests;
import 'sign_out_test.dart' as sign_out_tests;
import 'sign_up_with_email_test.dart' as sign_up_with_email_tests;
import 'sign_up_with_email_with_lambda_trigger_test.dart'
    as sign_up_with_email_with_lambda_trigger_tests;
import 'sign_up_with_phone_test.dart' as sign_up_with_phone_tests;
import 'sign_up_with_username_test.dart' as sign_up_with_username_tests;
import 'unprotected_routes_test.dart' as unprotected_routes_tests;
import 'verify_user_test.dart' as verify_user_tests;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Authenticator', () {
    confirm_sign_up_email_or_phone_tests.main();
    confirm_sign_up_tests.main();
    custom_ui_tests.main();
    reset_password_tests.main();
    sign_in_force_new_password_tests.main();
    sign_in_mfa_tests.main();
    sign_in_with_email_tests.main();
    sign_in_with_phone_tests.main();
    sign_in_with_username_tests.main();
    sign_out_tests.main();
    sign_up_with_email_tests.main();
    sign_up_with_email_with_lambda_trigger_tests.main();
    sign_up_with_phone_tests.main();
    sign_up_with_username_tests.main();
    unprotected_routes_tests.main();
    verify_user_tests.main();
  });
}
