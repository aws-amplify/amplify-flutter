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
    return $jf($jc($jc(0, resourceId.hashCode), resourceType.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
