// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_context_data_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserContextDataType extends UserContextDataType {
  @override
  final String? ipAddress;
  @override
  final String? encodedData;

  factory _$UserContextDataType(
          [void Function(UserContextDataTypeBuilder)? updates]) =>
      (new UserContextDataTypeBuilder()..update(updates))._build();

  _$UserContextDataType._({this.ipAddress, this.encodedData}) : super._();

  @override
  UserContextDataType rebuild(
          void Function(UserContextDataTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserContextDataTypeBuilder toBuilder() =>
      new UserContextDataTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserContextDataType &&
        ipAddress == other.ipAddress &&
        encodedData == other.encodedData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipAddress.hashCode);
    _$hash = $jc(_$hash, encodedData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UserContextDataTypeBuilder
    implements Builder<UserContextDataType, UserContextDataTypeBuilder> {
  _$UserContextDataType? _$v;

  String? _ipAddress;
  String? get ipAddress => _$this._ipAddress;
  set ipAddress(String? ipAddress) => _$this._ipAddress = ipAddress;

  String? _encodedData;
  String? get encodedData => _$this._encodedData;
  set encodedData(String? encodedData) => _$this._encodedData = encodedData;

  UserContextDataTypeBuilder();

  UserContextDataTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipAddress = $v.ipAddress;
      _encodedData = $v.encodedData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserContextDataType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserContextDataType;
  }

  @override
  void update(void Function(UserContextDataTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserContextDataType build() => _build();

  _$UserContextDataType _build() {
    final _$result = _$v ??
        new _$UserContextDataType._(
            ipAddress: ipAddress, encodedData: encodedData);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
