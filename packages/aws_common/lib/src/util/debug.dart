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

/// Whether running in debug mode.
const bool zDebugMode = !zProfileMode && !zReleaseMode;

/// Whether running in profile mode.
const bool zProfileMode = bool.fromEnvironment('dart.vm.profile');

/// Whether running in release mode.
const bool zReleaseMode = bool.fromEnvironment('dart.vm.product');

/// Whether running on the Web.
///
/// Since JS does not support integers, an int and a double will be identical
/// when representing the same value. However, this will not be true for all
/// other compilation targets.
const bool zIsWeb = identical(0, 0.0);
