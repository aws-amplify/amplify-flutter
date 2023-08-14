// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_address_to_classic_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreAddressToClassicResult extends RestoreAddressToClassicResult {
  @override
  final String? publicIp;
  @override
  final Status? status;

  factory _$RestoreAddressToClassicResult(
          [void Function(RestoreAddressToClassicResultBuilder)? updates]) =>
      (new RestoreAddressToClassicResultBuilder()..update(updates))._build();

  _$RestoreAddressToClassicResult._({this.publicIp, this.status}) : super._();

  @override
  RestoreAddressToClassicResult rebuild(
          void Function(RestoreAddressToClassicResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreAddressToClassicResultBuilder toBuilder() =>
      new RestoreAddressToClassicResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreAddressToClassicResult &&
        publicIp == other.publicIp &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreAddressToClassicResultBuilder
    implements
        Builder<RestoreAddressToClassicResult,
            RestoreAddressToClassicResultBuilder> {
  _$RestoreAddressToClassicResult? _$v;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  Status? _status;
  Status? get status => _$this._status;
  set status(Status? status) => _$this._status = status;

  RestoreAddressToClassicResultBuilder();

  RestoreAddressToClassicResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicIp = $v.publicIp;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreAddressToClassicResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreAddressToClassicResult;
  }

  @override
  void update(void Function(RestoreAddressToClassicResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreAddressToClassicResult build() => _build();

  _$RestoreAddressToClassicResult _build() {
    final _$result = _$v ??
        new _$RestoreAddressToClassicResult._(
            publicIp: publicIp, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
