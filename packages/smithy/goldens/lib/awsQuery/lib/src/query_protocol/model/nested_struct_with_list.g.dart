// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_struct_with_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedStructWithList extends NestedStructWithList {
  @override
  final _i2.BuiltList<String>? listArg;

  factory _$NestedStructWithList(
          [void Function(NestedStructWithListBuilder)? updates]) =>
      (new NestedStructWithListBuilder()..update(updates))._build();

  _$NestedStructWithList._({this.listArg}) : super._();

  @override
  NestedStructWithList rebuild(
          void Function(NestedStructWithListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedStructWithListBuilder toBuilder() =>
      new NestedStructWithListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedStructWithList && listArg == other.listArg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listArg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NestedStructWithListBuilder
    implements Builder<NestedStructWithList, NestedStructWithListBuilder> {
  _$NestedStructWithList? _$v;

  _i2.ListBuilder<String>? _listArg;
  _i2.ListBuilder<String> get listArg =>
      _$this._listArg ??= new _i2.ListBuilder<String>();
  set listArg(_i2.ListBuilder<String>? listArg) => _$this._listArg = listArg;

  NestedStructWithListBuilder();

  NestedStructWithListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listArg = $v.listArg?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedStructWithList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedStructWithList;
  }

  @override
  void update(void Function(NestedStructWithListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NestedStructWithList build() => _build();

  _$NestedStructWithList _build() {
    _$NestedStructWithList _$result;
    try {
      _$result =
          _$v ?? new _$NestedStructWithList._(listArg: _listArg?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listArg';
        _listArg?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NestedStructWithList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
