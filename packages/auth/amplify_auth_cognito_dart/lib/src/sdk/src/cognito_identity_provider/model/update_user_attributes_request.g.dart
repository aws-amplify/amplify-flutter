// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_attributes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserAttributesRequest extends UpdateUserAttributesRequest {
  @override
  final _i3.BuiltList<AttributeType> userAttributes;
  @override
  final String accessToken;
  @override
  final _i3.BuiltMap<String, String>? clientMetadata;

  factory _$UpdateUserAttributesRequest(
          [void Function(UpdateUserAttributesRequestBuilder)? updates]) =>
      (new UpdateUserAttributesRequestBuilder()..update(updates))._build();

  _$UpdateUserAttributesRequest._(
      {required this.userAttributes,
      required this.accessToken,
      this.clientMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userAttributes, r'UpdateUserAttributesRequest', 'userAttributes');
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'UpdateUserAttributesRequest', 'accessToken');
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
        userAttributes == other.userAttributes &&
        accessToken == other.accessToken &&
        clientMetadata == other.clientMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userAttributes.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateUserAttributesRequestBuilder
    implements
        Builder<UpdateUserAttributesRequest,
            UpdateUserAttributesRequestBuilder> {
  _$UpdateUserAttributesRequest? _$v;

  _i3.ListBuilder<AttributeType>? _userAttributes;
  _i3.ListBuilder<AttributeType> get userAttributes =>
      _$this._userAttributes ??= new _i3.ListBuilder<AttributeType>();
  set userAttributes(_i3.ListBuilder<AttributeType>? userAttributes) =>
      _$this._userAttributes = userAttributes;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  _i3.MapBuilder<String, String>? _clientMetadata;
  _i3.MapBuilder<String, String> get clientMetadata =>
      _$this._clientMetadata ??= new _i3.MapBuilder<String, String>();
  set clientMetadata(_i3.MapBuilder<String, String>? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  UpdateUserAttributesRequestBuilder();

  UpdateUserAttributesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userAttributes = $v.userAttributes.toBuilder();
      _accessToken = $v.accessToken;
      _clientMetadata = $v.clientMetadata?.toBuilder();
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
              userAttributes: userAttributes.build(),
              accessToken: BuiltValueNullFieldError.checkNotNull(
                  accessToken, r'UpdateUserAttributesRequest', 'accessToken'),
              clientMetadata: _clientMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userAttributes';
        userAttributes.build();

        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUserAttributesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
