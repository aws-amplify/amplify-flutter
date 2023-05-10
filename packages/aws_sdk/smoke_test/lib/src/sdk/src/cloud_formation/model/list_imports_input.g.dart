// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_imports_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListImportsInput extends ListImportsInput {
  @override
  final String exportName;
  @override
  final String? nextToken;

  factory _$ListImportsInput(
          [void Function(ListImportsInputBuilder)? updates]) =>
      (new ListImportsInputBuilder()..update(updates))._build();

  _$ListImportsInput._({required this.exportName, this.nextToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        exportName, r'ListImportsInput', 'exportName');
  }

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
        exportName == other.exportName &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportName.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListImportsInputBuilder
    implements Builder<ListImportsInput, ListImportsInputBuilder> {
  _$ListImportsInput? _$v;

  String? _exportName;
  String? get exportName => _$this._exportName;
  set exportName(String? exportName) => _$this._exportName = exportName;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListImportsInputBuilder() {
    ListImportsInput._init(this);
  }

  ListImportsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportName = $v.exportName;
      _nextToken = $v.nextToken;
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
            exportName: BuiltValueNullFieldError.checkNotNull(
                exportName, r'ListImportsInput', 'exportName'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
