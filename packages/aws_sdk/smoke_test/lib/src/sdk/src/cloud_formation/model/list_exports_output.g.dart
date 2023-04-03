// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_exports_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListExportsOutput extends ListExportsOutput {
  @override
  final _i3.BuiltList<_i2.Export>? exports;
  @override
  final String? nextToken;

  factory _$ListExportsOutput(
          [void Function(ListExportsOutputBuilder)? updates]) =>
      (new ListExportsOutputBuilder()..update(updates))._build();

  _$ListExportsOutput._({this.exports, this.nextToken}) : super._();

  @override
  ListExportsOutput rebuild(void Function(ListExportsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListExportsOutputBuilder toBuilder() =>
      new ListExportsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListExportsOutput &&
        exports == other.exports &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exports.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListExportsOutputBuilder
    implements Builder<ListExportsOutput, ListExportsOutputBuilder> {
  _$ListExportsOutput? _$v;

  _i3.ListBuilder<_i2.Export>? _exports;
  _i3.ListBuilder<_i2.Export> get exports =>
      _$this._exports ??= new _i3.ListBuilder<_i2.Export>();
  set exports(_i3.ListBuilder<_i2.Export>? exports) =>
      _$this._exports = exports;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListExportsOutputBuilder() {
    ListExportsOutput._init(this);
  }

  ListExportsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exports = $v.exports?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListExportsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListExportsOutput;
  }

  @override
  void update(void Function(ListExportsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListExportsOutput build() => _build();

  _$ListExportsOutput _build() {
    _$ListExportsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListExportsOutput._(
              exports: _exports?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exports';
        _exports?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListExportsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
