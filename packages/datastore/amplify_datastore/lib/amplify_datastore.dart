/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_datastore_dart/amplify_datastore_dart.dart';

export 'package:amplify_core/src/types/datastore/datastore_types.dart'
    hide DateTimeParse;
export 'package:amplify_datastore_dart/amplify_datastore_dart.dart'
    hide AmplifyDataStoreDart;

class AmplifyDataStore extends AmplifyDataStoreDart {
  AmplifyDataStore({
    required super.modelProvider,
    super.errorHandler,
    super.conflictHandler,
    super.syncExpressions,
    super.syncInterval,
    super.syncMaxRecords,
    super.syncPageSize,
    super.authModeStrategy,
  });
}
