// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_service_specific_credential_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateServiceSpecificCredentialResponse
    extends CreateServiceSpecificCredentialResponse {
  @override
  final _i2.ServiceSpecificCredential? serviceSpecificCredential;

  factory _$CreateServiceSpecificCredentialResponse(
          [void Function(CreateServiceSpecificCredentialResponseBuilder)?
              updates]) =>
      (new CreateServiceSpecificCredentialResponseBuilder()..update(updates))
          ._build();

  _$CreateServiceSpecificCredentialResponse._({this.serviceSpecificCredential})
      : super._();

  @override
  CreateServiceSpecificCredentialResponse rebuild(
          void Function(CreateServiceSpecificCredentialResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateServiceSpecificCredentialResponseBuilder toBuilder() =>
      new CreateServiceSpecificCredentialResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateServiceSpecificCredentialResponse &&
        serviceSpecificCredential == other.serviceSpecificCredential;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceSpecificCredential.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateServiceSpecificCredentialResponseBuilder
    implements
        Builder<CreateServiceSpecificCredentialResponse,
            CreateServiceSpecificCredentialResponseBuilder> {
  _$CreateServiceSpecificCredentialResponse? _$v;

  _i2.ServiceSpecificCredentialBuilder? _serviceSpecificCredential;
  _i2.ServiceSpecificCredentialBuilder get serviceSpecificCredential =>
      _$this._serviceSpecificCredential ??=
          new _i2.ServiceSpecificCredentialBuilder();
  set serviceSpecificCredential(
          _i2.ServiceSpecificCredentialBuilder? serviceSpecificCredential) =>
      _$this._serviceSpecificCredential = serviceSpecificCredential;

  CreateServiceSpecificCredentialResponseBuilder() {
    CreateServiceSpecificCredentialResponse._init(this);
  }

  CreateServiceSpecificCredentialResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceSpecificCredential = $v.serviceSpecificCredential?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateServiceSpecificCredentialResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateServiceSpecificCredentialResponse;
  }

  @override
  void update(
      void Function(CreateServiceSpecificCredentialResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateServiceSpecificCredentialResponse build() => _build();

  _$CreateServiceSpecificCredentialResponse _build() {
    _$CreateServiceSpecificCredentialResponse _$result;
    try {
      _$result = _$v ??
          new _$CreateServiceSpecificCredentialResponse._(
              serviceSpecificCredential: _serviceSpecificCredential?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceSpecificCredential';
        _serviceSpecificCredential?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateServiceSpecificCredentialResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
