// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.reset_service_specific_credential_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetServiceSpecificCredentialResponse
    extends ResetServiceSpecificCredentialResponse {
  @override
  final _i2.ServiceSpecificCredential? serviceSpecificCredential;

  factory _$ResetServiceSpecificCredentialResponse(
          [void Function(ResetServiceSpecificCredentialResponseBuilder)?
              updates]) =>
      (new ResetServiceSpecificCredentialResponseBuilder()..update(updates))
          ._build();

  _$ResetServiceSpecificCredentialResponse._({this.serviceSpecificCredential})
      : super._();

  @override
  ResetServiceSpecificCredentialResponse rebuild(
          void Function(ResetServiceSpecificCredentialResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetServiceSpecificCredentialResponseBuilder toBuilder() =>
      new ResetServiceSpecificCredentialResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetServiceSpecificCredentialResponse &&
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

class ResetServiceSpecificCredentialResponseBuilder
    implements
        Builder<ResetServiceSpecificCredentialResponse,
            ResetServiceSpecificCredentialResponseBuilder> {
  _$ResetServiceSpecificCredentialResponse? _$v;

  _i2.ServiceSpecificCredentialBuilder? _serviceSpecificCredential;
  _i2.ServiceSpecificCredentialBuilder get serviceSpecificCredential =>
      _$this._serviceSpecificCredential ??=
          new _i2.ServiceSpecificCredentialBuilder();
  set serviceSpecificCredential(
          _i2.ServiceSpecificCredentialBuilder? serviceSpecificCredential) =>
      _$this._serviceSpecificCredential = serviceSpecificCredential;

  ResetServiceSpecificCredentialResponseBuilder() {
    ResetServiceSpecificCredentialResponse._init(this);
  }

  ResetServiceSpecificCredentialResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceSpecificCredential = $v.serviceSpecificCredential?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetServiceSpecificCredentialResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetServiceSpecificCredentialResponse;
  }

  @override
  void update(
      void Function(ResetServiceSpecificCredentialResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetServiceSpecificCredentialResponse build() => _build();

  _$ResetServiceSpecificCredentialResponse _build() {
    _$ResetServiceSpecificCredentialResponse _$result;
    try {
      _$result = _$v ??
          new _$ResetServiceSpecificCredentialResponse._(
              serviceSpecificCredential: _serviceSpecificCredential?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceSpecificCredential';
        _serviceSpecificCredential?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResetServiceSpecificCredentialResponse',
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
