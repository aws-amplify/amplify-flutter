// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// ignore_for_file: omit_local_variable_types

import 'dart:convert';

import 'package:aws_common/aws_common.dart';

Future<void> main() async {
  final AWSHttpRequest request = AWSHttpRequest.get(
    Uri.parse('https://httpstat.us/200'),
  );
  final AWSStreamedHttpResponse response = await request.send();
  final String body = await utf8.decodeStream(response.body);
  safePrint(body);
}
