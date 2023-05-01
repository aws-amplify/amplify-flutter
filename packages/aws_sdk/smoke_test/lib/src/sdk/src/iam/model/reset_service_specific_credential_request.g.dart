// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.reset_service_specific_credential_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetServiceSpecificCredentialRequest
    extends ResetServiceSpecificCredentialRequest {
  @override
  final String? userName;
  @override
  final String serviceSpecificCredentialId;

  factory _$ResetServiceSpecificCredentialRequest(
          [void Function(ResetServiceSpecificCredentialRequestBuilder)?
              updates]) =>
      (new ResetServiceSpecificCredentialRequestBuilder()..update(updates))
          ._build();

  _$ResetServiceSpecificCredentialRequest._(
      {this.userName, required this.serviceSpecificCredentialId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serviceSpecificCredentialId,
        r'ResetServiceSpecificCredentialRequest',
        'serviceSpecificCredentialId');
  }

  @override
  ResetServiceSpecificCredentialRequest rebuild(
          void Function(ResetServiceSpecificCredentialRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetServiceSpecificCredentialRequestBuilder toBuilder() =>
      new ResetServiceSpecificCredentialRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetServiceSpecificCredentialRequest &&
        userName == other.userName &&
        serviceSpecificCredentialId == other.serviceSpecificCredentialId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, serviceSpecificCredentialId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResetServiceSpecificCredentialRequestBuilder
    implements
        Builder<ResetServiceSpecificCredentialRequest,
            ResetServiceSpecificCredentialRequestBuilder> {
  _$ResetServiceSpecificCredentialRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _serviceSpecificCredentialId;
  String? get serviceSpecificCredentialId =>
      _$this._serviceSpecificCredentialId;
  set serviceSpecificCredentialId(String? serviceSpecificCredentialId) =>
      _$this._serviceSpecificCredentialId = serviceSpecificCredentialId;

  ResetServiceSpecificCredentialRequestBuilder() {
    ResetServiceSpecificCredentialRequest._init(this);
  }

  ResetServiceSpecificCredentialRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _serviceSpecificCredentialId = $v.serviceSpecificCredentialId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetServiceSpecificCredentialRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetServiceSpecificCredentialRequest;
  }

  @override
  void update(
      void Function(ResetServiceSpecificCredentialRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetServiceSpecificCredentialRequest build() => _build();

  _$ResetServiceSpecificCredentialRequest _build() {
    final _$result = _$v ??
        new _$ResetServiceSpecificCredentialRequest._(
            userName: userName,
            serviceSpecificCredentialId: BuiltValueNullFieldError.checkNotNull(
                serviceSpecificCredentialId,
                r'ResetServiceSpecificCredentialRequest',
                'serviceSpecificCredentialId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
