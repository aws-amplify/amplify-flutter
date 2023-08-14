// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_password_data_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPasswordDataResult extends GetPasswordDataResult {
  @override
  final String? instanceId;
  @override
  final String? passwordData;
  @override
  final DateTime? timestamp;

  factory _$GetPasswordDataResult(
          [void Function(GetPasswordDataResultBuilder)? updates]) =>
      (new GetPasswordDataResultBuilder()..update(updates))._build();

  _$GetPasswordDataResult._(
      {this.instanceId, this.passwordData, this.timestamp})
      : super._();

  @override
  GetPasswordDataResult rebuild(
          void Function(GetPasswordDataResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPasswordDataResultBuilder toBuilder() =>
      new GetPasswordDataResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPasswordDataResult &&
        instanceId == other.instanceId &&
        passwordData == other.passwordData &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, passwordData.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetPasswordDataResultBuilder
    implements Builder<GetPasswordDataResult, GetPasswordDataResultBuilder> {
  _$GetPasswordDataResult? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _passwordData;
  String? get passwordData => _$this._passwordData;
  set passwordData(String? passwordData) => _$this._passwordData = passwordData;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  GetPasswordDataResultBuilder();

  GetPasswordDataResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _passwordData = $v.passwordData;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPasswordDataResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPasswordDataResult;
  }

  @override
  void update(void Function(GetPasswordDataResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPasswordDataResult build() => _build();

  _$GetPasswordDataResult _build() {
    final _$result = _$v ??
        new _$GetPasswordDataResult._(
            instanceId: instanceId,
            passwordData: passwordData,
            timestamp: timestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
