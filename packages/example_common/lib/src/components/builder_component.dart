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

import 'component.dart';

/// {@template example_common.builder_component}
/// A component that exposes a [builder] method, which should
/// return a [Component]
/// {@endtemplate}
class BuilderComponent extends Component {
  /// {@macro example_common.builder_component}
  BuilderComponent({required this.builder});

  /// A builder method which will be used to render a child
  final Component Function() builder;

  @override
  Component render() {
    return builder();
  }
}
