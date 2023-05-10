// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_service_specific_credentials_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListServiceSpecificCredentialsResponse
    extends ListServiceSpecificCredentialsResponse {
  @override
  final _i3.BuiltList<_i2.ServiceSpecificCredentialMetadata>?
      serviceSpecificCredentials;

  factory _$ListServiceSpecificCredentialsResponse(
          [void Function(ListServiceSpecificCredentialsResponseBuilder)?
              updates]) =>
      (new ListServiceSpecificCredentialsResponseBuilder()..update(updates))
          ._build();

  _$ListServiceSpecificCredentialsResponse._({this.serviceSpecificCredentials})
      : super._();

  @override
  ListServiceSpecificCredentialsResponse rebuild(
          void Function(ListServiceSpecificCredentialsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListServiceSpecificCredentialsResponseBuilder toBuilder() =>
      new ListServiceSpecificCredentialsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListServiceSpecificCredentialsResponse &&
        serviceSpecificCredentials == other.serviceSpecificCredentials;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceSpecificCredentials.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListServiceSpecificCredentialsResponseBuilder
    implements
        Builder<ListServiceSpecificCredentialsResponse,
            ListServiceSpecificCredentialsResponseBuilder> {
  _$ListServiceSpecificCredentialsResponse? _$v;

  _i3.ListBuilder<_i2.ServiceSpecificCredentialMetadata>?
      _serviceSpecificCredentials;
  _i3.ListBuilder<_i2.ServiceSpecificCredentialMetadata>
      get serviceSpecificCredentials => _$this._serviceSpecificCredentials ??=
          new _i3.ListBuilder<_i2.ServiceSpecificCredentialMetadata>();
  set serviceSpecificCredentials(
          _i3.ListBuilder<_i2.ServiceSpecificCredentialMetadata>?
              serviceSpecificCredentials) =>
      _$this._serviceSpecificCredentials = serviceSpecificCredentials;

  ListServiceSpecificCredentialsResponseBuilder() {
    ListServiceSpecificCredentialsResponse._init(this);
  }

  ListServiceSpecificCredentialsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceSpecificCredentials = $v.serviceSpecificCredentials?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListServiceSpecificCredentialsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListServiceSpecificCredentialsResponse;
  }

  @override
  void update(
      void Function(ListServiceSpecificCredentialsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListServiceSpecificCredentialsResponse build() => _build();

  _$ListServiceSpecificCredentialsResponse _build() {
    _$ListServiceSpecificCredentialsResponse _$result;
    try {
      _$result = _$v ??
          new _$ListServiceSpecificCredentialsResponse._(
              serviceSpecificCredentials: _serviceSpecificCredentials?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceSpecificCredentials';
        _serviceSpecificCredentials?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListServiceSpecificCredentialsResponse',
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
