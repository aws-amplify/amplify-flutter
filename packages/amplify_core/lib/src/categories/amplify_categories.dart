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

library amplify_interface;

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/categories/auth/auth_category_interface.dart';
import 'package:amplify_core/src/categories/auth/types.dart';

/// category parts
part 'auth/amplify_auth_category.dart';

String _errorMsgPluginNotAdded(String pluginName) =>
    '$pluginName plugin has not been added to Amplify';

String _recoverySuggestionPluginNotAdded(String pluginName) =>
    'Add $pluginName plugin to Amplify and call configure before calling $pluginName related APIs';

AmplifyException _pluginNotAddedException(String pluginName) =>
    AmplifyException(
      _errorMsgPluginNotAdded(pluginName),
      recoverySuggestion: _recoverySuggestionPluginNotAdded(pluginName),
    );
