// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:mocktail/mocktail.dart';

class MockAWSFile extends Mock implements AWSFile {}

class MockChunkedStreamReader extends Mock //
    implements
        ChunkedStreamReader<int> {}
