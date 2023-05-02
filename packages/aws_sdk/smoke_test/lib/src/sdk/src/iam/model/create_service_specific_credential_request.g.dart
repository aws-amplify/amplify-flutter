// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_service_specific_credential_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateServiceSpecificCredentialRequest
    extends CreateServiceSpecificCredentialRequest {
  @override
  final String userName;
  @override
  final String serviceName;

  factory _$CreateServiceSpecificCredentialRequest(
          [void Function(CreateServiceSpecificCredentialRequestBuilder)?
              updates]) =>
      (new CreateServiceSpecificCredentialRequestBuilder()..update(updates))
          ._build();

  _$CreateServiceSpecificCredentialRequest._(
      {required this.userName, required this.serviceName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'CreateServiceSpecificCredentialRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        serviceName, r'CreateServiceSpecificCredentialRequest', 'serviceName');
  }

  @override
  CreateServiceSpecificCredentialRequest rebuild(
          void Function(CreateServiceSpecificCredentialRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateServiceSpecificCredentialRequestBuilder toBuilder() =>
      new CreateServiceSpecificCredentialRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateServiceSpecificCredentialRequest &&
        userName == other.userName &&
        serviceName == other.serviceName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateServiceSpecificCredentialRequestBuilder
    implements
        Builder<CreateServiceSpecificCredentialRequest,
            CreateServiceSpecificCredentialRequestBuilder> {
  _$CreateServiceSpecificCredentialRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  CreateServiceSpecificCredentialRequestBuilder() {
    CreateServiceSpecificCredentialRequest._init(this);
  }

  CreateServiceSpecificCredentialRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _serviceName = $v.serviceName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateServiceSpecificCredentialRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateServiceSpecificCredentialRequest;
  }

  @override
  void update(
      void Function(CreateServiceSpecificCredentialRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateServiceSpecificCredentialRequest build() => _build();

  _$CreateServiceSpecificCredentialRequest _build() {
    final _$result = _$v ??
        new _$CreateServiceSpecificCredentialRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(userName,
                r'CreateServiceSpecificCredentialRequest', 'userName'),
            serviceName: BuiltValueNullFieldError.checkNotNull(serviceName,
                r'CreateServiceSpecificCredentialRequest', 'serviceName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
