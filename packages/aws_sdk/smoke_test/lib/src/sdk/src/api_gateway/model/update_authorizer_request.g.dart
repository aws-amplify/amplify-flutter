// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_authorizer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAuthorizerRequest extends UpdateAuthorizerRequest {
  @override
  final String restApiId;
  @override
  final String authorizerId;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateAuthorizerRequest(
          [void Function(UpdateAuthorizerRequestBuilder)? updates]) =>
      (new UpdateAuthorizerRequestBuilder()..update(updates))._build();

  _$UpdateAuthorizerRequest._(
      {required this.restApiId,
      required this.authorizerId,
      this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateAuthorizerRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        authorizerId, r'UpdateAuthorizerRequest', 'authorizerId');
  }

  @override
  UpdateAuthorizerRequest rebuild(
          void Function(UpdateAuthorizerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAuthorizerRequestBuilder toBuilder() =>
      new UpdateAuthorizerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAuthorizerRequest &&
        restApiId == other.restApiId &&
        authorizerId == other.authorizerId &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, authorizerId.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateAuthorizerRequestBuilder
    implements
        Builder<UpdateAuthorizerRequest, UpdateAuthorizerRequestBuilder> {
  _$UpdateAuthorizerRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _authorizerId;
  String? get authorizerId => _$this._authorizerId;
  set authorizerId(String? authorizerId) => _$this._authorizerId = authorizerId;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateAuthorizerRequestBuilder();

  UpdateAuthorizerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _authorizerId = $v.authorizerId;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAuthorizerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAuthorizerRequest;
  }

  @override
  void update(void Function(UpdateAuthorizerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAuthorizerRequest build() => _build();

  _$UpdateAuthorizerRequest _build() {
    _$UpdateAuthorizerRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateAuthorizerRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateAuthorizerRequest', 'restApiId'),
              authorizerId: BuiltValueNullFieldError.checkNotNull(
                  authorizerId, r'UpdateAuthorizerRequest', 'authorizerId'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateAuthorizerRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateAuthorizerRequestPayload extends UpdateAuthorizerRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateAuthorizerRequestPayload(
          [void Function(UpdateAuthorizerRequestPayloadBuilder)? updates]) =>
      (new UpdateAuthorizerRequestPayloadBuilder()..update(updates))._build();

  _$UpdateAuthorizerRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateAuthorizerRequestPayload rebuild(
          void Function(UpdateAuthorizerRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAuthorizerRequestPayloadBuilder toBuilder() =>
      new UpdateAuthorizerRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAuthorizerRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateAuthorizerRequestPayloadBuilder
    implements
        Builder<UpdateAuthorizerRequestPayload,
            UpdateAuthorizerRequestPayloadBuilder> {
  _$UpdateAuthorizerRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateAuthorizerRequestPayloadBuilder();

  UpdateAuthorizerRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAuthorizerRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAuthorizerRequestPayload;
  }

  @override
  void update(void Function(UpdateAuthorizerRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAuthorizerRequestPayload build() => _build();

  _$UpdateAuthorizerRequestPayload _build() {
    _$UpdateAuthorizerRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateAuthorizerRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateAuthorizerRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
