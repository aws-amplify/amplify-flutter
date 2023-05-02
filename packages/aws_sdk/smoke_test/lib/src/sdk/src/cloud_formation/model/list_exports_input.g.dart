// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_exports_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListExportsInput extends ListExportsInput {
  @override
  final String? nextToken;

  factory _$ListExportsInput(
          [void Function(ListExportsInputBuilder)? updates]) =>
      (new ListExportsInputBuilder()..update(updates))._build();

  _$ListExportsInput._({this.nextToken}) : super._();

  @override
  ListExportsInput rebuild(void Function(ListExportsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListExportsInputBuilder toBuilder() =>
      new ListExportsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListExportsInput && nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListExportsInputBuilder
    implements Builder<ListExportsInput, ListExportsInputBuilder> {
  _$ListExportsInput? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListExportsInputBuilder() {
    ListExportsInput._init(this);
  }

  ListExportsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
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
    final _$result = _$v ?? new _$ListExportsInput._(nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
