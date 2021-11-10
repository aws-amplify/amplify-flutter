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
import 'package:amplify_flutter/src/amplify_impl.dart';
import 'package:amplify_flutter/src/categories/amplify_categories.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_resources/amplifyconfiguration_all_resources.dart';
import '../test_resources/test_values.dart';

void main() {
  const channel = MethodChannel('com.amazonaws.amplify/amplify');
  const apiChannel = MethodChannel('com.amazonaws.amplify/api');

  TestWidgetsFlutterBinding.ensureInitialized();

  // Class under test
  late AmplifyClass amplify;

  // Amplify config file
  var amplifyConfig = allResourcesConfig;

  setUp(() async {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    // We want to instantiate a new instance for each test so we start
    // with a fresh state as `Amplify` singleton holds a state.
    amplify = AmplifyClass.protected();
    await Amplify.addPlugin(AmplifyAPI());
  });

  tearDown(() {
    APICategory.plugins.clear();
  });

  test('Graphql API is instantiated', () async {
    await amplify.configure(amplifyConfig);
    var config = await amplify.asyncConfig;
    var api = config.api!.awsAPIPlugin!['graphqlapi'];
    expect(api!.endpointType, GRAPHQL_TYPE);
    expect(api.apiKey, API_KEY);
    expect(api.endpoint, GRAPHQL_ENDPOINT);
    expect(api.authorizationType, AUTHFLOW_API_KEY);
    expect(api.region, REGION);
  });

  test('REST API is instantiated', () async {
    await amplify.configure(amplifyConfig);
    var config = await amplify.asyncConfig;
    var api = config.api!.awsAPIPlugin!['restapi'];
    expect(api!.endpointType, REST_TYPE);
    expect(api.apiKey, null);
    expect(api.endpoint, REST_ENDPOINT);
    expect(api.authorizationType, AUTHFLOW_IAM);
    expect(api.region, REGION);
  });
}
