// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_base_path_mapping_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateBasePathMappingRequest extends UpdateBasePathMappingRequest {
  @override
  final String basePath;
  @override
  final String domainName;
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateBasePathMappingRequest(
          [void Function(UpdateBasePathMappingRequestBuilder)? updates]) =>
      (new UpdateBasePathMappingRequestBuilder()..update(updates))._build();

  _$UpdateBasePathMappingRequest._(
      {required this.basePath, required this.domainName, this.patchOperations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        basePath, r'UpdateBasePathMappingRequest', 'basePath');
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'UpdateBasePathMappingRequest', 'domainName');
  }

  @override
  UpdateBasePathMappingRequest rebuild(
          void Function(UpdateBasePathMappingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateBasePathMappingRequestBuilder toBuilder() =>
      new UpdateBasePathMappingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateBasePathMappingRequest &&
        basePath == other.basePath &&
        domainName == other.domainName &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, basePath.hashCode);
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jc(_$hash, patchOperations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateBasePathMappingRequestBuilder
    implements
        Builder<UpdateBasePathMappingRequest,
            UpdateBasePathMappingRequestBuilder> {
  _$UpdateBasePathMappingRequest? _$v;

  String? _basePath;
  String? get basePath => _$this._basePath;
  set basePath(String? basePath) => _$this._basePath = basePath;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateBasePathMappingRequestBuilder() {
    UpdateBasePathMappingRequest._init(this);
  }

  UpdateBasePathMappingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _basePath = $v.basePath;
      _domainName = $v.domainName;
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateBasePathMappingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateBasePathMappingRequest;
  }

  @override
  void update(void Function(UpdateBasePathMappingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateBasePathMappingRequest build() => _build();

  _$UpdateBasePathMappingRequest _build() {
    _$UpdateBasePathMappingRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateBasePathMappingRequest._(
              basePath: BuiltValueNullFieldError.checkNotNull(
                  basePath, r'UpdateBasePathMappingRequest', 'basePath'),
              domainName: BuiltValueNullFieldError.checkNotNull(
                  domainName, r'UpdateBasePathMappingRequest', 'domainName'),
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateBasePathMappingRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateBasePathMappingRequestPayload
    extends UpdateBasePathMappingRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateBasePathMappingRequestPayload(
          [void Function(UpdateBasePathMappingRequestPayloadBuilder)?
              updates]) =>
      (new UpdateBasePathMappingRequestPayloadBuilder()..update(updates))
          ._build();

  _$UpdateBasePathMappingRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateBasePathMappingRequestPayload rebuild(
          void Function(UpdateBasePathMappingRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateBasePathMappingRequestPayloadBuilder toBuilder() =>
      new UpdateBasePathMappingRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateBasePathMappingRequestPayload &&
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

class UpdateBasePathMappingRequestPayloadBuilder
    implements
        Builder<UpdateBasePathMappingRequestPayload,
            UpdateBasePathMappingRequestPayloadBuilder> {
  _$UpdateBasePathMappingRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateBasePathMappingRequestPayloadBuilder() {
    UpdateBasePathMappingRequestPayload._init(this);
  }

  UpdateBasePathMappingRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateBasePathMappingRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateBasePathMappingRequestPayload;
  }

  @override
  void update(
      void Function(UpdateBasePathMappingRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateBasePathMappingRequestPayload build() => _build();

  _$UpdateBasePathMappingRequestPayload _build() {
    _$UpdateBasePathMappingRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateBasePathMappingRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateBasePathMappingRequestPayload',
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
