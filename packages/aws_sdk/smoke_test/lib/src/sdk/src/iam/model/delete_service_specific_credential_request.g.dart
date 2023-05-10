// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_service_specific_credential_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteServiceSpecificCredentialRequest
    extends DeleteServiceSpecificCredentialRequest {
  @override
  final String? userName;
  @override
  final String serviceSpecificCredentialId;

  factory _$DeleteServiceSpecificCredentialRequest(
          [void Function(DeleteServiceSpecificCredentialRequestBuilder)?
              updates]) =>
      (new DeleteServiceSpecificCredentialRequestBuilder()..update(updates))
          ._build();

  _$DeleteServiceSpecificCredentialRequest._(
      {this.userName, required this.serviceSpecificCredentialId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serviceSpecificCredentialId,
        r'DeleteServiceSpecificCredentialRequest',
        'serviceSpecificCredentialId');
  }

  @override
  DeleteServiceSpecificCredentialRequest rebuild(
          void Function(DeleteServiceSpecificCredentialRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteServiceSpecificCredentialRequestBuilder toBuilder() =>
      new DeleteServiceSpecificCredentialRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteServiceSpecificCredentialRequest &&
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

class DeleteServiceSpecificCredentialRequestBuilder
    implements
        Builder<DeleteServiceSpecificCredentialRequest,
            DeleteServiceSpecificCredentialRequestBuilder> {
  _$DeleteServiceSpecificCredentialRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _serviceSpecificCredentialId;
  String? get serviceSpecificCredentialId =>
      _$this._serviceSpecificCredentialId;
  set serviceSpecificCredentialId(String? serviceSpecificCredentialId) =>
      _$this._serviceSpecificCredentialId = serviceSpecificCredentialId;

  DeleteServiceSpecificCredentialRequestBuilder() {
    DeleteServiceSpecificCredentialRequest._init(this);
  }

  DeleteServiceSpecificCredentialRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _serviceSpecificCredentialId = $v.serviceSpecificCredentialId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteServiceSpecificCredentialRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteServiceSpecificCredentialRequest;
  }

  @override
  void update(
      void Function(DeleteServiceSpecificCredentialRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteServiceSpecificCredentialRequest build() => _build();

  _$DeleteServiceSpecificCredentialRequest _build() {
    final _$result = _$v ??
        new _$DeleteServiceSpecificCredentialRequest._(
            userName: userName,
            serviceSpecificCredentialId: BuiltValueNullFieldError.checkNotNull(
                serviceSpecificCredentialId,
                r'DeleteServiceSpecificCredentialRequest',
                'serviceSpecificCredentialId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
