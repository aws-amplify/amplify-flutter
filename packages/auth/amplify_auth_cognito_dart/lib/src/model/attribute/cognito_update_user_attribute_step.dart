// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@macro amplify_core.auth.auth_update_attribute_step}
@Deprecated('''
Use AuthUpdateAttributeStep instead. These steps are generic and not specific 
to Cognito.
''')
typedef CognitoUpdateUserAttributeStep = AuthUpdateAttributeStep;
