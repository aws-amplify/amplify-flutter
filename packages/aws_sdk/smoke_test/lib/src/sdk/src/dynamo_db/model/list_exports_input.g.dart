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
    var _$hash = 0;
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
