// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.compliance_by_resource;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplianceByResource extends ComplianceByResource {
  @override
  final String? resourceType;
  @override
  final String? resourceId;
  @override
  final _i2.Compliance? compliance;

  factory _$ComplianceByResource(
          [void Function(ComplianceByResourceBuilder)? updates]) =>
      (new ComplianceByResourceBuilder()..update(updates))._build();

  _$ComplianceByResource._(
      {this.resourceType, this.resourceId, this.compliance})
      : super._();

  @override
  ComplianceByResource rebuild(
          void Function(ComplianceByResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplianceByResourceBuilder toBuilder() =>
      new ComplianceByResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplianceByResource &&
        resourceType == other.resourceType &&
        resourceId == other.resourceId &&
        compliance == other.compliance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, compliance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplianceByResourceBuilder
    implements Builder<ComplianceByResource, ComplianceByResourceBuilder> {
  _$ComplianceByResource? _$v;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  _i2.ComplianceBuilder? _compliance;
  _i2.ComplianceBuilder get compliance =>
      _$this._compliance ??= new _i2.ComplianceBuilder();
  set compliance(_i2.ComplianceBuilder? compliance) =>
      _$this._compliance = compliance;

  ComplianceByResourceBuilder() {
    ComplianceByResource._init(this);
  }

  ComplianceByResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _compliance = $v.compliance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplianceByResource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplianceByResource;
  }

  @override
  void update(void Function(ComplianceByResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplianceByResource build() => _build();

  _$ComplianceByResource _build() {
    _$ComplianceByResource _$result;
    try {
      _$result = _$v ??
          new _$ComplianceByResource._(
              resourceType: resourceType,
              resourceId: resourceId,
              compliance: _compliance?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'compliance';
        _compliance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComplianceByResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
