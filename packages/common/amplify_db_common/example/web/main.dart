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

import 'package:amplify_db_common_example/database.dart';
import 'package:example_common/example_common.dart';

final db = MyDatabase();

Future<void> main() async {
  renderApp(AppComponent());
}

class AppComponent extends StatefulComponent {
  bool _loading = false;
  List<Todo> _todos = [];
  String _title = '';
  String _content = '';

  String? _errorText;
  String? _successText;

  void _clearMessages() {
    setState(() {
      _errorText = null;
      _successText = null;
    });
  }

  Future<void> _insert() async {
    _clearMessages();
    if (_title.isEmpty || _content.isEmpty) {
      setState(() => _errorText = 'Title and Content are both required.');
    } else {
      await db
          .into(db.todos)
          .insert(TodosCompanion.insert(title: _title, content: _content));
      setState(() {
        _title = '';
        _content = '';
        _successText = 'Inserted new todo!';
      });
    }
  }

  Future<void> _query() async {
    setState(() => _loading = true);
    final items = await db.select(db.todos).get();
    setState(() {
      _todos = items;
      _loading = false;
    });
  }

  @override
  void onInit() {
    _query();
    super.onInit();
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
                labelText: 'Title',
                initialValue: _title,
                onChanged: (value) {
                  _title = value ?? '';
                },
              ),
              TextFormFieldComponent(
                labelText: 'Content',
                initialValue: _content,
                onChanged: (value) {
                  _content = value ?? '';
                },
              ),
              ButtonComponent(
                innerHtml: 'Add',
                onClick: _insert,
              )
            ],
          ),
          RowComponent(
            children: [
              ButtonComponent(
                innerHtml: 'Re-query Database',
                onClick: _query,
              )
            ],
          ),
          if (_loading) TextComponent('Loading ...'),
          if (!_loading && _todos.isEmpty)
            TextComponent('No todo items in the DB.'),
          if (!_loading && _todos.isNotEmpty)
            CenterComponent(
              child: TableComponent(
                tableDefinition: TableDefinition(
                  headers: ['Title', 'Content'],
                  rows: _todos.map((e) => [e.title, e.content]).toList(),
                ),
              ),
            )
        ],
      ),
    );
  }
}
