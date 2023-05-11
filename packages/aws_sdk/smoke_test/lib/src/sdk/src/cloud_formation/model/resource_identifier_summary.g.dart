// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.resource_identifier_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceIdentifierSummary extends ResourceIdentifierSummary {
  @override
  final String? resourceType;
  @override
  final _i2.BuiltList<String>? logicalResourceIds;
  @override
  final _i2.BuiltList<String>? resourceIdentifiers;

  factory _$ResourceIdentifierSummary(
          [void Function(ResourceIdentifierSummaryBuilder)? updates]) =>
      (new ResourceIdentifierSummaryBuilder()..update(updates))._build();

  _$ResourceIdentifierSummary._(
      {this.resourceType, this.logicalResourceIds, this.resourceIdentifiers})
      : super._();

  @override
  ResourceIdentifierSummary rebuild(
          void Function(ResourceIdentifierSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceIdentifierSummaryBuilder toBuilder() =>
      new ResourceIdentifierSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceIdentifierSummary &&
        resourceType == other.resourceType &&
        logicalResourceIds == other.logicalResourceIds &&
        resourceIdentifiers == other.resourceIdentifiers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, logicalResourceIds.hashCode);
    _$hash = $jc(_$hash, resourceIdentifiers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceIdentifierSummaryBuilder
    implements
        Builder<ResourceIdentifierSummary, ResourceIdentifierSummaryBuilder> {
  _$ResourceIdentifierSummary? _$v;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  _i2.ListBuilder<String>? _logicalResourceIds;
  _i2.ListBuilder<String> get logicalResourceIds =>
      _$this._logicalResourceIds ??= new _i2.ListBuilder<String>();
  set logicalResourceIds(_i2.ListBuilder<String>? logicalResourceIds) =>
      _$this._logicalResourceIds = logicalResourceIds;

  _i2.ListBuilder<String>? _resourceIdentifiers;
  _i2.ListBuilder<String> get resourceIdentifiers =>
      _$this._resourceIdentifiers ??= new _i2.ListBuilder<String>();
  set resourceIdentifiers(_i2.ListBuilder<String>? resourceIdentifiers) =>
      _$this._resourceIdentifiers = resourceIdentifiers;

  ResourceIdentifierSummaryBuilder() {
    ResourceIdentifierSummary._init(this);
  }

  ResourceIdentifierSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _logicalResourceIds = $v.logicalResourceIds?.toBuilder();
      _resourceIdentifiers = $v.resourceIdentifiers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceIdentifierSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceIdentifierSummary;
  }

  @override
  void update(void Function(ResourceIdentifierSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceIdentifierSummary build() => _build();

  _$ResourceIdentifierSummary _build() {
    _$ResourceIdentifierSummary _$result;
    try {
      _$result = _$v ??
          new _$ResourceIdentifierSummary._(
              resourceType: resourceType,
              logicalResourceIds: _logicalResourceIds?.build(),
              resourceIdentifiers: _resourceIdentifiers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logicalResourceIds';
        _logicalResourceIds?.build();
        _$failedField = 'resourceIdentifiers';
        _resourceIdentifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceIdentifierSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
