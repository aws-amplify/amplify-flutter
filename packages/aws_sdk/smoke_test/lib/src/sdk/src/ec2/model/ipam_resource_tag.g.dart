// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_resource_tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamResourceTag extends IpamResourceTag {
  @override
  final String? key;
  @override
  final String? value;

  factory _$IpamResourceTag([void Function(IpamResourceTagBuilder)? updates]) =>
      (new IpamResourceTagBuilder()..update(updates))._build();

  _$IpamResourceTag._({this.key, this.value}) : super._();

  @override
  IpamResourceTag rebuild(void Function(IpamResourceTagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamResourceTagBuilder toBuilder() =>
      new IpamResourceTagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamResourceTag && key == other.key && value == other.value;
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

class IpamResourceTagBuilder
    implements Builder<IpamResourceTag, IpamResourceTagBuilder> {
  _$IpamResourceTag? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  IpamResourceTagBuilder();

  IpamResourceTagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamResourceTag other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamResourceTag;
  }

  @override
  void update(void Function(IpamResourceTagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamResourceTag build() => _build();

  _$IpamResourceTag _build() {
    final _$result = _$v ?? new _$IpamResourceTag._(key: key, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
