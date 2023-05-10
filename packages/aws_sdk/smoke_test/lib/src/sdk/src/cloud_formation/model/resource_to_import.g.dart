// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.resource_to_import;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceToImport extends ResourceToImport {
  @override
  final String resourceType;
  @override
  final String logicalResourceId;
  @override
  final _i2.BuiltMap<String, String> resourceIdentifier;

  factory _$ResourceToImport(
          [void Function(ResourceToImportBuilder)? updates]) =>
      (new ResourceToImportBuilder()..update(updates))._build();

  _$ResourceToImport._(
      {required this.resourceType,
      required this.logicalResourceId,
      required this.resourceIdentifier})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'ResourceToImport', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        logicalResourceId, r'ResourceToImport', 'logicalResourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceIdentifier, r'ResourceToImport', 'resourceIdentifier');
  }

  @override
  ResourceToImport rebuild(void Function(ResourceToImportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceToImportBuilder toBuilder() =>
      new ResourceToImportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceToImport &&
        resourceType == other.resourceType &&
        logicalResourceId == other.logicalResourceId &&
        resourceIdentifier == other.resourceIdentifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, logicalResourceId.hashCode);
    _$hash = $jc(_$hash, resourceIdentifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceToImportBuilder
    implements Builder<ResourceToImport, ResourceToImportBuilder> {
  _$ResourceToImport? _$v;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  String? _logicalResourceId;
  String? get logicalResourceId => _$this._logicalResourceId;
  set logicalResourceId(String? logicalResourceId) =>
      _$this._logicalResourceId = logicalResourceId;

  _i2.MapBuilder<String, String>? _resourceIdentifier;
  _i2.MapBuilder<String, String> get resourceIdentifier =>
      _$this._resourceIdentifier ??= new _i2.MapBuilder<String, String>();
  set resourceIdentifier(_i2.MapBuilder<String, String>? resourceIdentifier) =>
      _$this._resourceIdentifier = resourceIdentifier;

  ResourceToImportBuilder() {
    ResourceToImport._init(this);
  }

  ResourceToImportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _logicalResourceId = $v.logicalResourceId;
      _resourceIdentifier = $v.resourceIdentifier.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceToImport other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceToImport;
  }

  @override
  void update(void Function(ResourceToImportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceToImport build() => _build();

  _$ResourceToImport _build() {
    _$ResourceToImport _$result;
    try {
      _$result = _$v ??
          new _$ResourceToImport._(
              resourceType: BuiltValueNullFieldError.checkNotNull(
                  resourceType, r'ResourceToImport', 'resourceType'),
              logicalResourceId: BuiltValueNullFieldError.checkNotNull(
                  logicalResourceId, r'ResourceToImport', 'logicalResourceId'),
              resourceIdentifier: resourceIdentifier.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceIdentifier';
        resourceIdentifier.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceToImport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
