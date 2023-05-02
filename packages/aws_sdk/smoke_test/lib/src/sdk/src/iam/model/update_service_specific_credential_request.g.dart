// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_service_specific_credential_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateServiceSpecificCredentialRequest
    extends UpdateServiceSpecificCredentialRequest {
  @override
  final String? userName;
  @override
  final String serviceSpecificCredentialId;
  @override
  final _i3.StatusType status;

  factory _$UpdateServiceSpecificCredentialRequest(
          [void Function(UpdateServiceSpecificCredentialRequestBuilder)?
              updates]) =>
      (new UpdateServiceSpecificCredentialRequestBuilder()..update(updates))
          ._build();

  _$UpdateServiceSpecificCredentialRequest._(
      {this.userName,
      required this.serviceSpecificCredentialId,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serviceSpecificCredentialId,
        r'UpdateServiceSpecificCredentialRequest',
        'serviceSpecificCredentialId');
    BuiltValueNullFieldError.checkNotNull(
        status, r'UpdateServiceSpecificCredentialRequest', 'status');
  }

  @override
  UpdateServiceSpecificCredentialRequest rebuild(
          void Function(UpdateServiceSpecificCredentialRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateServiceSpecificCredentialRequestBuilder toBuilder() =>
      new UpdateServiceSpecificCredentialRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateServiceSpecificCredentialRequest &&
        userName == other.userName &&
        serviceSpecificCredentialId == other.serviceSpecificCredentialId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, serviceSpecificCredentialId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateServiceSpecificCredentialRequestBuilder
    implements
        Builder<UpdateServiceSpecificCredentialRequest,
            UpdateServiceSpecificCredentialRequestBuilder> {
  _$UpdateServiceSpecificCredentialRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _serviceSpecificCredentialId;
  String? get serviceSpecificCredentialId =>
      _$this._serviceSpecificCredentialId;
  set serviceSpecificCredentialId(String? serviceSpecificCredentialId) =>
      _$this._serviceSpecificCredentialId = serviceSpecificCredentialId;

  _i3.StatusType? _status;
  _i3.StatusType? get status => _$this._status;
  set status(_i3.StatusType? status) => _$this._status = status;

  UpdateServiceSpecificCredentialRequestBuilder() {
    UpdateServiceSpecificCredentialRequest._init(this);
  }

  UpdateServiceSpecificCredentialRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _serviceSpecificCredentialId = $v.serviceSpecificCredentialId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateServiceSpecificCredentialRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateServiceSpecificCredentialRequest;
  }

  @override
  void update(
      void Function(UpdateServiceSpecificCredentialRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateServiceSpecificCredentialRequest build() => _build();

  _$UpdateServiceSpecificCredentialRequest _build() {
    final _$result = _$v ??
        new _$UpdateServiceSpecificCredentialRequest._(
            userName: userName,
            serviceSpecificCredentialId: BuiltValueNullFieldError.checkNotNull(
                serviceSpecificCredentialId,
                r'UpdateServiceSpecificCredentialRequest',
                'serviceSpecificCredentialId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'UpdateServiceSpecificCredentialRequest', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
