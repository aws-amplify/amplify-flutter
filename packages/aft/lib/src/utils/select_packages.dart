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

import 'package:aft/src/models.dart';
import 'package:interact/interact.dart';

Future<List<PackageInfo>> selectPackages(
    List<PackageInfo> testablePackages) async {
  final packageSelections =
      testablePackages.map((package) => package.name).toList();

  final packagePrompt = MultiSelect(
    prompt: 'Select packages (use spacebar to select)',
    options: packageSelections,
    // defaults: packageSelections.map((i) => true).toList(),
  ).interact();

  final selectedPackages =
      packagePrompt.map((e) => testablePackages[e]).toList();

  return selectedPackages;
}
