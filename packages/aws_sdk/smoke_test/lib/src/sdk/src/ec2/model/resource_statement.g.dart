// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_statement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceStatement extends ResourceStatement {
  @override
  final _i2.BuiltList<String>? resources;
  @override
  final _i2.BuiltList<String>? resourceTypes;

  factory _$ResourceStatement(
          [void Function(ResourceStatementBuilder)? updates]) =>
      (new ResourceStatementBuilder()..update(updates))._build();

  _$ResourceStatement._({this.resources, this.resourceTypes}) : super._();

  @override
  ResourceStatement rebuild(void Function(ResourceStatementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceStatementBuilder toBuilder() =>
      new ResourceStatementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceStatement &&
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

class ResourceStatementBuilder
    implements Builder<ResourceStatement, ResourceStatementBuilder> {
  _$ResourceStatement? _$v;

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

  ResourceStatementBuilder();

  ResourceStatementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resources = $v.resources?.toBuilder();
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceStatement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceStatement;
  }

  @override
  void update(void Function(ResourceStatementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceStatement build() => _build();

  _$ResourceStatement _build() {
    _$ResourceStatement _$result;
    try {
      _$result = _$v ??
          new _$ResourceStatement._(
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
            r'ResourceStatement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
