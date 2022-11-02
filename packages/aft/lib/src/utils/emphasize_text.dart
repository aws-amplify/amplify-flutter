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

/// Returns [text] in green.
String formatSuccess(String? text) {
  return '\x1B[32m${text ?? ''}\x1B[0m';
}

/// Returns [text] in yellow.
String formatWarning(String? text) {
  return '\x1B[33m${text ?? ''}\x1B[0m';
}

/// Returns [text] in red.
String formatException(String? text) {
  return '\x1B[31m${text ?? ''}\x1B[0m';
}
