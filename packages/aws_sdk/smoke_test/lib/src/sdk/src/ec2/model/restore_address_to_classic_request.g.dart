// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_address_to_classic_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreAddressToClassicRequest extends RestoreAddressToClassicRequest {
  @override
  final bool dryRun;
  @override
  final String? publicIp;

  factory _$RestoreAddressToClassicRequest(
          [void Function(RestoreAddressToClassicRequestBuilder)? updates]) =>
      (new RestoreAddressToClassicRequestBuilder()..update(updates))._build();

  _$RestoreAddressToClassicRequest._({required this.dryRun, this.publicIp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RestoreAddressToClassicRequest', 'dryRun');
  }

  @override
  RestoreAddressToClassicRequest rebuild(
          void Function(RestoreAddressToClassicRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreAddressToClassicRequestBuilder toBuilder() =>
      new RestoreAddressToClassicRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreAddressToClassicRequest &&
        dryRun == other.dryRun &&
        publicIp == other.publicIp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreAddressToClassicRequestBuilder
    implements
        Builder<RestoreAddressToClassicRequest,
            RestoreAddressToClassicRequestBuilder> {
  _$RestoreAddressToClassicRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  RestoreAddressToClassicRequestBuilder() {
    RestoreAddressToClassicRequest._init(this);
  }

  RestoreAddressToClassicRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _publicIp = $v.publicIp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreAddressToClassicRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreAddressToClassicRequest;
  }

  @override
  void update(void Function(RestoreAddressToClassicRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreAddressToClassicRequest build() => _build();

  _$RestoreAddressToClassicRequest _build() {
    final _$result = _$v ??
        new _$RestoreAddressToClassicRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'RestoreAddressToClassicRequest', 'dryRun'),
            publicIp: publicIp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
