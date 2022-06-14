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

import 'dart:html';

import 'component.dart';

/// {@template example_common.table_component}
/// A component that displays a set of [rows] in a table
/// {@endtemplate}
class TableComponent extends Component {
  /// Header and Rows for to-be table
  final TableDefinition tableDefinition;

  /// {@macro example_common.column_component}
  TableComponent({
    required this.tableDefinition,
  });

  @override
  Component render() {
    final table = TableElement();
    table.createTHead();
    var tbody = table.createTBody();

    TableRowElement headerRow = table.tHead!.insertRow(-1);

    for (var h = 0; h < tableDefinition.headers.length; h++) {
      headerRow.insertCell(h).text = tableDefinition.headers[h];
    }

    for (var row in tableDefinition.rows) {
      TableRowElement newRow = tbody.insertRow(-1);
      newRow.id = 'wrappedTableRow';
      newRow.style.border = '1px solid black'; // add at the end
      for (var r = 0; r < row.length; r++) {
        newRow.insertCell(r).text = row[r];
      }
    }
    return Component.fromElement(table);
  }
}

/// The input type for the [TableComponent] constructor
class TableDefinition {
  /// The header row for the [TableComponent]
  List<String> headers;

  /// The data rows for the [TableComponent]
  List<List<String>> rows;

  /// {@macro example_common.form_component}
  TableDefinition({
    required this.headers,
    required this.rows,
  });
}
