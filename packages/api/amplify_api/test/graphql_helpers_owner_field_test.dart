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

import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_models/owner_field/ModelProvider.dart';

class MockAmplifyAPI extends AmplifyAPIDart {
  MockAmplifyAPI({
    super.modelProvider,
  });
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('with ModelProvider manyToMany', () {
    setUpAll(() async {
      await Amplify.reset();
      await Amplify.addPlugin(
        // needed to fetch the schema from within the helper
        MockAmplifyAPI(modelProvider: ModelProvider.instance),
      );
    });

    test(
      'ModelMutations.update() will not provide null for an owner field when omitted from model instance',
      () {
        final todo = Todo(name: 'mow lawn');
        final updateReq = ModelMutations.update(todo);
        final input = updateReq.variables['input'] as Map<String, dynamic>;
        expect(input.containsKey('owners'), isFalse);
      },
    );

    test(
      'ModelMutations.update() will include an owner field when provided',
      () {
        const owners = ['bob'];
        final todo = Todo(name: 'mow lawn', owners: owners);
        final updateReq = ModelMutations.update(todo);
        final input = updateReq.variables['input'] as Map<String, dynamic>;
        expect(input['owners'], owners);
      },
    );
  });
}
