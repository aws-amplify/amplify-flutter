// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_resource_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateResourceRequest extends UpdateResourceRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateResourceRequest(
          [void Function(UpdateResourceRequestBuilder)? updates]) =>
      (new UpdateResourceRequestBuilder()..update(updates))._build();

  _$UpdateResourceRequest._(
      {required this.restApiId, required this.resourceId, this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'UpdateResourceRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'UpdateResourceRequest', 'resourceId');
  }

  @override
  UpdateResourceRequest rebuild(
          void Function(UpdateResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateResourceRequestBuilder toBuilder() =>
      new UpdateResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateResourceRequest &&
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateResourceRequestBuilder
    implements Builder<UpdateResourceRequest, UpdateResourceRequestBuilder> {
  _$UpdateResourceRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateResourceRequestBuilder();

  UpdateResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateResourceRequest;
  }

  @override
  void update(void Function(UpdateResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateResourceRequest build() => _build();

  _$UpdateResourceRequest _build() {
    _$UpdateResourceRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateResourceRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'UpdateResourceRequest', 'restApiId'),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'UpdateResourceRequest', 'resourceId'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateResourceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateResourceRequestPayload extends UpdateResourceRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateResourceRequestPayload(
          [void Function(UpdateResourceRequestPayloadBuilder)? updates]) =>
      (new UpdateResourceRequestPayloadBuilder()..update(updates))._build();

  _$UpdateResourceRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateResourceRequestPayload rebuild(
          void Function(UpdateResourceRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateResourceRequestPayloadBuilder toBuilder() =>
      new UpdateResourceRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateResourceRequestPayload &&
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

class UpdateResourceRequestPayloadBuilder
    implements
        Builder<UpdateResourceRequestPayload,
            UpdateResourceRequestPayloadBuilder> {
  _$UpdateResourceRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateResourceRequestPayloadBuilder();

  UpdateResourceRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateResourceRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateResourceRequestPayload;
  }

  @override
  void update(void Function(UpdateResourceRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateResourceRequestPayload build() => _build();

  _$UpdateResourceRequestPayload _build() {
    _$UpdateResourceRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateResourceRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateResourceRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
