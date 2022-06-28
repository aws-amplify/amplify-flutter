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

List<String> getMachineArgs() {
  return [
    'devices',
    '--machine',
  ];
}

List<String> getFlutterDriverArgs({String testPath = ''}) {
  return [
    'drive',
    '--driver=test_driver/integration_test.dart',
    '--target=integration_test/$testPath',
    '-d',
    'web-server',
    '--no-headless'
  ];
}

List<String> getFlutterTestArgs({
  String testPath = '',
  required String deviceId,
}) {
  return [
    'test',
    'integration_test/$testPath',
    '-d',
    deviceId,
  ];
}
