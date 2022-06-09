#!/bin/bash
# Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

dart run build_runner build --delete-conflicting-outputs
dart compile js -o lib/workers.js lib/workers.dart
dart compile js -m -O4 -o lib/workers.min.js lib/workers.dart
dart compile js -o lib/no_workers.js lib/no_workers.dart
dart compile js -m -O4 -o lib/no_workers.min.js lib/no_workers.dart
dart test $@
