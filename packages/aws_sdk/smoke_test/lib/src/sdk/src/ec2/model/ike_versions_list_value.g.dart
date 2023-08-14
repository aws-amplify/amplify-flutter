// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ike_versions_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IkeVersionsListValue extends IkeVersionsListValue {
  @override
  final String? value;

  factory _$IkeVersionsListValue(
          [void Function(IkeVersionsListValueBuilder)? updates]) =>
      (new IkeVersionsListValueBuilder()..update(updates))._build();

  _$IkeVersionsListValue._({this.value}) : super._();

  @override
  IkeVersionsListValue rebuild(
          void Function(IkeVersionsListValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IkeVersionsListValueBuilder toBuilder() =>
      new IkeVersionsListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IkeVersionsListValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IkeVersionsListValueBuilder
    implements Builder<IkeVersionsListValue, IkeVersionsListValueBuilder> {
  _$IkeVersionsListValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  IkeVersionsListValueBuilder();

  IkeVersionsListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IkeVersionsListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IkeVersionsListValue;
  }

  @override
  void update(void Function(IkeVersionsListValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IkeVersionsListValue build() => _build();

  _$IkeVersionsListValue _build() {
    final _$result = _$v ?? new _$IkeVersionsListValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
