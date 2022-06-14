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

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:example_common/example_common.dart';

final storage = AmplifySecureStorageDart(
  config: AmplifySecureStorageConfig(
    scope: 'default',
  ),
);
Future<void> main() async {
  renderApp(AppComponent());
}

class AppComponent extends StatefulComponent {
  String _key = '';
  String _value = '';

  String? _errorText;
  String? _successText;

  void _clearMessages() {
    setState(() {
      _errorText = null;
      _successText = null;
    });
  }

  Future<void> _read() async {
    _clearMessages();
    if (_key.isEmpty) {
      setState(() => _errorText = 'Key is required.');
    } else {
      final value = await storage.read(key: _key);
      setState(() => _successText = 'value is: $value');
    }
  }

  Future<void> _write() async {
    _clearMessages();
    if (_key.isEmpty || _value.isEmpty) {
      setState(() => _errorText = 'Key and Value are required.');
    } else {
      await storage.write(key: _key, value: _value);
      setState(() => _successText = 'Wrote value to storage!');
    }
  }

  Future<void> _delete() async {
    _clearMessages();
    if (_key.isEmpty) {
      setState(() => _errorText = 'Key is required.');
    } else {
      await storage.delete(key: _key);
      setState(() => _successText = 'deleted key: $_key from storage!');
    }
  }

  @override
  Component render() {
    return CenterComponent(
      child: ColumnComponent(
        children: [
          if (_successText != null) TextComponent('Success: $_successText'),
          if (_errorText != null) TextComponent('Error: $_errorText'),
          FormComponent(
            children: [
              TextFormFieldComponent(
                labelText: 'key',
                initialValue: _key,
                onChanged: (value) {
                  _key = value ?? '';
                },
              ),
              TextFormFieldComponent(
                labelText: 'value',
                initialValue: _value,
                onChanged: (value) {
                  _value = value ?? '';
                },
              ),
              RowComponent(
                children: [
                  ButtonComponent(
                    innerHtml: 'Write',
                    onClick: _write,
                  ),
                  ButtonComponent(
                    innerHtml: 'Read',
                    onClick: _read,
                  ),
                  ButtonComponent(
                    innerHtml: 'delete',
                    onClick: _delete,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
