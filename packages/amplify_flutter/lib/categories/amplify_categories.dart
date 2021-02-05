library amplify_interface;

import 'dart:async';
import 'dart:io';

import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:amplify_core/types/index.dart';
import 'package:flutter/foundation.dart';

/// category parts
part 'amplify_analytics_category.dart';
part 'amplify_auth_category.dart';
part 'amplify_datastore_category.dart';
part 'amplify_storage_category.dart';
part 'amplify_api_category.dart';

_errorMsgPluginNotAdded(String pluginName) =>
    "$pluginName plugin has not been added to Amplify";

_recoverySuggestionPluginNotAdded(String pluginName) =>
    "Add $pluginName plugin to Amplify and call configure before calling $pluginName related APIs";

_pluginNotAddedException(String pluginName) =>
    AmplifyException(_errorMsgPluginNotAdded(pluginName),
        recoverySuggestion: _recoverySuggestionPluginNotAdded(pluginName));
