// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_statement_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceStatementRequest extends ResourceStatementRequest {
  @override
  final _i2.BuiltList<String>? resources;
  @override
  final _i2.BuiltList<String>? resourceTypes;

  factory _$ResourceStatementRequest(
          [void Function(ResourceStatementRequestBuilder)? updates]) =>
      (new ResourceStatementRequestBuilder()..update(updates))._build();

  _$ResourceStatementRequest._({this.resources, this.resourceTypes})
      : super._();

  @override
  ResourceStatementRequest rebuild(
          void Function(ResourceStatementRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceStatementRequestBuilder toBuilder() =>
      new ResourceStatementRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceStatementRequest &&
        resources == other.resources &&
        resourceTypes == other.resourceTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jc(_$hash, resourceTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceStatementRequestBuilder
    implements
        Builder<ResourceStatementRequest, ResourceStatementRequestBuilder> {
  _$ResourceStatementRequest? _$v;

  _i2.ListBuilder<String>? _resources;
  _i2.ListBuilder<String> get resources =>
      _$this._resources ??= new _i2.ListBuilder<String>();
  set resources(_i2.ListBuilder<String>? resources) =>
      _$this._resources = resources;

  _i2.ListBuilder<String>? _resourceTypes;
  _i2.ListBuilder<String> get resourceTypes =>
      _$this._resourceTypes ??= new _i2.ListBuilder<String>();
  set resourceTypes(_i2.ListBuilder<String>? resourceTypes) =>
      _$this._resourceTypes = resourceTypes;

  ResourceStatementRequestBuilder();

  ResourceStatementRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resources = $v.resources?.toBuilder();
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceStatementRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceStatementRequest;
  }

  @override
  void update(void Function(ResourceStatementRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceStatementRequest build() => _build();

  _$ResourceStatementRequest _build() {
    _$ResourceStatementRequest _$result;
    try {
      _$result = _$v ??
          new _$ResourceStatementRequest._(
              resources: _resources?.build(),
              resourceTypes: _resourceTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resources';
        _resources?.build();
        _$failedField = 'resourceTypes';
        _resourceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceStatementRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
