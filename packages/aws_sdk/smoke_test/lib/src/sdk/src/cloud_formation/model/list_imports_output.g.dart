// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_imports_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListImportsOutput extends ListImportsOutput {
  @override
  final _i2.BuiltList<String>? imports;
  @override
  final String? nextToken;

  factory _$ListImportsOutput(
          [void Function(ListImportsOutputBuilder)? updates]) =>
      (new ListImportsOutputBuilder()..update(updates))._build();

  _$ListImportsOutput._({this.imports, this.nextToken}) : super._();

  @override
  ListImportsOutput rebuild(void Function(ListImportsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListImportsOutputBuilder toBuilder() =>
      new ListImportsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListImportsOutput &&
        imports == other.imports &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imports.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListImportsOutputBuilder
    implements Builder<ListImportsOutput, ListImportsOutputBuilder> {
  _$ListImportsOutput? _$v;

  _i2.ListBuilder<String>? _imports;
  _i2.ListBuilder<String> get imports =>
      _$this._imports ??= new _i2.ListBuilder<String>();
  set imports(_i2.ListBuilder<String>? imports) => _$this._imports = imports;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListImportsOutputBuilder() {
    ListImportsOutput._init(this);
  }

  ListImportsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imports = $v.imports?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListImportsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListImportsOutput;
  }

  @override
  void update(void Function(ListImportsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListImportsOutput build() => _build();

  _$ListImportsOutput _build() {
    _$ListImportsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListImportsOutput._(
              imports: _imports?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imports';
        _imports?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListImportsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
