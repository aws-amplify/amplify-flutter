// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'package:example_common/example_common.dart';

void main() {
  renderApp(
    ColumnComponent(
      children: [
        TextComponent('Example text component'),
        TextFormFieldComponent(
          labelText: 'Example Form Field',
          onChanged: (_) {},
        ),
        ButtonComponent(innerHtml: 'Example Button', onClick: () {})
      ],
    ),
  );
}
