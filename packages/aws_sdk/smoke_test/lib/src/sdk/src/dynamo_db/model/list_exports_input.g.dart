// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_exports_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListExportsInput extends ListExportsInput {
  @override
  final int? maxResults;
  @override
  final String? nextToken;
  @override
  final String? tableArn;

  factory _$ListExportsInput(
          [void Function(ListExportsInputBuilder)? updates]) =>
      (new ListExportsInputBuilder()..update(updates))._build();

  _$ListExportsInput._({this.maxResults, this.nextToken, this.tableArn})
      : super._();

  @override
  ListExportsInput rebuild(void Function(ListExportsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListExportsInputBuilder toBuilder() =>
      new ListExportsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListExportsInput &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        tableArn == other.tableArn;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, maxResults.hashCode), nextToken.hashCode),
        tableArn.hashCode));
  }
}

class ListExportsInputBuilder
    implements Builder<ListExportsInput, ListExportsInputBuilder> {
  _$ListExportsInput? _$v;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  ListExportsInputBuilder() {
    ListExportsInput._init(this);
  }

  ListExportsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _tableArn = $v.tableArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListExportsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListExportsInput;
  }

  @override
  void update(void Function(ListExportsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListExportsInput build() => _build();

  _$ListExportsInput _build() {
    final _$result = _$v ??
        new _$ListExportsInput._(
            maxResults: maxResults, nextToken: nextToken, tableArn: tableArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
