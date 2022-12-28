// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

ModelType<T> getModelType<T extends Model>() {
  return ModelProvider.instance.getModelTypeByModelName(T.toString())
      as ModelType<T>;
}
