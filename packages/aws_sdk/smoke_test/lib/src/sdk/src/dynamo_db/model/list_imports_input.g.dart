// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_imports_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListImportsInput extends ListImportsInput {
  @override
  final String? nextToken;
  @override
  final int? pageSize;
  @override
  final String? tableArn;

  factory _$ListImportsInput(
          [void Function(ListImportsInputBuilder)? updates]) =>
      (new ListImportsInputBuilder()..update(updates))._build();

  _$ListImportsInput._({this.nextToken, this.pageSize, this.tableArn})
      : super._();

  @override
  ListImportsInput rebuild(void Function(ListImportsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListImportsInputBuilder toBuilder() =>
      new ListImportsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListImportsInput &&
        nextToken == other.nextToken &&
        pageSize == other.pageSize &&
        tableArn == other.tableArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListImportsInputBuilder
    implements Builder<ListImportsInput, ListImportsInputBuilder> {
  _$ListImportsInput? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  ListImportsInputBuilder() {
    ListImportsInput._init(this);
  }

  ListImportsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _pageSize = $v.pageSize;
      _tableArn = $v.tableArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListImportsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListImportsInput;
  }

  @override
  void update(void Function(ListImportsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListImportsInput build() => _build();

  _$ListImportsInput _build() {
    final _$result = _$v ??
        new _$ListImportsInput._(
            nextToken: nextToken, pageSize: pageSize, tableArn: tableArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
