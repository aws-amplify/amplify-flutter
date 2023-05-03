// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

import 'package:example_common/src/components/component.dart';

/// {@template example_common.table_component}
/// A component that displays a set of rows in a table.
/// {@endtemplate}
class TableComponent extends Component {
  /// {@macro example_common.column_component}
  TableComponent({
    required this.tableDefinition,
  });

  /// Header and Rows for to-be table
  final TableDefinition tableDefinition;

  @override
  Component render() {
    final table = TableElement()..createTHead();
    final tbody = table.createTBody();

    final headerRow = table.tHead!.insertRow(-1);

    for (var h = 0; h < tableDefinition.headers.length; h++) {
      headerRow.insertCell(h).text = tableDefinition.headers[h];
    }

    for (final row in tableDefinition.rows) {
      final newRow = tbody.insertRow(-1)..id = 'wrappedTableRow';
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
  /// {@macro example_common.form_component}
  TableDefinition({
    required this.headers,
    required this.rows,
  });

  /// The header row for the [TableComponent]
  List<String> headers;

  /// The data rows for the [TableComponent]
  List<List<String>> rows;
}
