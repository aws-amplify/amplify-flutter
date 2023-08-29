// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ike_versions_request_list_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IkeVersionsRequestListValue extends IkeVersionsRequestListValue {
  @override
  final String? value;

  factory _$IkeVersionsRequestListValue(
          [void Function(IkeVersionsRequestListValueBuilder)? updates]) =>
      (new IkeVersionsRequestListValueBuilder()..update(updates))._build();

  _$IkeVersionsRequestListValue._({this.value}) : super._();

  @override
  IkeVersionsRequestListValue rebuild(
          void Function(IkeVersionsRequestListValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IkeVersionsRequestListValueBuilder toBuilder() =>
      new IkeVersionsRequestListValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IkeVersionsRequestListValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IkeVersionsRequestListValueBuilder
    implements
        Builder<IkeVersionsRequestListValue,
            IkeVersionsRequestListValueBuilder> {
  _$IkeVersionsRequestListValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  IkeVersionsRequestListValueBuilder();

  IkeVersionsRequestListValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IkeVersionsRequestListValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IkeVersionsRequestListValue;
  }

  @override
  void update(void Function(IkeVersionsRequestListValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IkeVersionsRequestListValue build() => _build();

  _$IkeVersionsRequestListValue _build() {
    final _$result = _$v ?? new _$IkeVersionsRequestListValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
