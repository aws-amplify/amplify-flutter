// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_ipam_resource_tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestIpamResourceTag extends RequestIpamResourceTag {
  @override
  final String? key;
  @override
  final String? value;

  factory _$RequestIpamResourceTag(
          [void Function(RequestIpamResourceTagBuilder)? updates]) =>
      (new RequestIpamResourceTagBuilder()..update(updates))._build();

  _$RequestIpamResourceTag._({this.key, this.value}) : super._();

  @override
  RequestIpamResourceTag rebuild(
          void Function(RequestIpamResourceTagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestIpamResourceTagBuilder toBuilder() =>
      new RequestIpamResourceTagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestIpamResourceTag &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestIpamResourceTagBuilder
    implements Builder<RequestIpamResourceTag, RequestIpamResourceTagBuilder> {
  _$RequestIpamResourceTag? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  RequestIpamResourceTagBuilder();

  RequestIpamResourceTagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestIpamResourceTag other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestIpamResourceTag;
  }

  @override
  void update(void Function(RequestIpamResourceTagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestIpamResourceTag build() => _build();

  _$RequestIpamResourceTag _build() {
    final _$result =
        _$v ?? new _$RequestIpamResourceTag._(key: key, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
