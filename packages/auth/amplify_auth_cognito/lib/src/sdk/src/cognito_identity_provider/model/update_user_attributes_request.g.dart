// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.update_user_attributes_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserAttributesRequest extends UpdateUserAttributesRequest {
  @override
  final String accessToken;
  @override
  final _i3.BuiltMap<String, String>? clientMetadata;
  @override
  final _i3.BuiltList<_i4.AttributeType> userAttributes;

  factory _$UpdateUserAttributesRequest(
          [void Function(UpdateUserAttributesRequestBuilder)? updates]) =>
      (new UpdateUserAttributesRequestBuilder()..update(updates))._build();

  _$UpdateUserAttributesRequest._(
      {required this.accessToken,
      this.clientMetadata,
      required this.userAttributes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'UpdateUserAttributesRequest', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        userAttributes, 'UpdateUserAttributesRequest', 'userAttributes');
  }

  @override
  UpdateUserAttributesRequest rebuild(
          void Function(UpdateUserAttributesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserAttributesRequestBuilder toBuilder() =>
      new UpdateUserAttributesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserAttributesRequest &&
        accessToken == other.accessToken &&
        clientMetadata == other.clientMetadata &&
        userAttributes == other.userAttributes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, accessToken.hashCode), clientMetadata.hashCode),
        userAttributes.hashCode));
  }
}

class UpdateUserAttributesRequestBuilder
    implements
        Builder<UpdateUserAttributesRequest,
            UpdateUserAttributesRequestBuilder> {
  _$UpdateUserAttributesRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  _i3.MapBuilder<String, String>? _clientMetadata;
  _i3.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i3.MapBuilder<String, String>();
  set clientMetadata(_i3.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  _i3.ListBuilder<_i4.AttributeType>? _userAttributes;
  _i3.ListBuilder<_i4.AttributeType> get userAttributes =>
      _$this._userAttributes ??= new _i3.ListBuilder<_i4.AttributeType>();
  set userAttributes(_i3.ListBuilder<_i4.AttributeType>? userAttributes) =>
      _$this._userAttributes = userAttributes;

  UpdateUserAttributesRequestBuilder() {
    UpdateUserAttributesRequest._init(this);
  }

  UpdateUserAttributesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _userAttributes = $v.userAttributes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserAttributesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserAttributesRequest;
  }

  @override
  void update(void Function(UpdateUserAttributesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserAttributesRequest build() => _build();

  _$UpdateUserAttributesRequest _build() {
    _$UpdateUserAttributesRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateUserAttributesRequest._(
              accessToken: BuiltValueNullFieldError.checkNotNull(
                  accessToken, 'UpdateUserAttributesRequest', 'accessToken'),
              clientMetadata: _clientMetadata?.build(),
              userAttributes: userAttributes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
        _$failedField = 'userAttributes';
        userAttributes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateUserAttributesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
