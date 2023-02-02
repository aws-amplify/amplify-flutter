// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_resource_config_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteResourceConfigRequest extends DeleteResourceConfigRequest {
  @override
  final String resourceId;
  @override
  final String resourceType;

  factory _$DeleteResourceConfigRequest(
          [void Function(DeleteResourceConfigRequestBuilder)? updates]) =>
      (new DeleteResourceConfigRequestBuilder()..update(updates))._build();

  _$DeleteResourceConfigRequest._(
      {required this.resourceId, required this.resourceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'DeleteResourceConfigRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'DeleteResourceConfigRequest', 'resourceType');
  }

  @override
  DeleteResourceConfigRequest rebuild(
          void Function(DeleteResourceConfigRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteResourceConfigRequestBuilder toBuilder() =>
      new DeleteResourceConfigRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteResourceConfigRequest &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteResourceConfigRequestBuilder
    implements
        Builder<DeleteResourceConfigRequest,
            DeleteResourceConfigRequestBuilder> {
  _$DeleteResourceConfigRequest? _$v;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  DeleteResourceConfigRequestBuilder() {
    DeleteResourceConfigRequest._init(this);
  }

  DeleteResourceConfigRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteResourceConfigRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteResourceConfigRequest;
  }

  @override
  void update(void Function(DeleteResourceConfigRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteResourceConfigRequest build() => _build();

  _$DeleteResourceConfigRequest _build() {
    final _$result = _$v ??
        new _$DeleteResourceConfigRequest._(
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'DeleteResourceConfigRequest', 'resourceId'),
            resourceType: BuiltValueNullFieldError.checkNotNull(
                resourceType, r'DeleteResourceConfigRequest', 'resourceType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
