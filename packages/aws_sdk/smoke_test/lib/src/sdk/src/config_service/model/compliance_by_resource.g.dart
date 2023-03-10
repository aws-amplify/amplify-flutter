// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.compliance_by_resource;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplianceByResource extends ComplianceByResource {
  @override
  final _i2.Compliance? compliance;
  @override
  final String? resourceId;
  @override
  final String? resourceType;

  factory _$ComplianceByResource(
          [void Function(ComplianceByResourceBuilder)? updates]) =>
      (new ComplianceByResourceBuilder()..update(updates))._build();

  _$ComplianceByResource._(
      {this.compliance, this.resourceId, this.resourceType})
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
        compliance == other.compliance &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, compliance.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplianceByResourceBuilder
    implements Builder<ComplianceByResource, ComplianceByResourceBuilder> {
  _$ComplianceByResource? _$v;

  _i2.ComplianceBuilder? _compliance;
  _i2.ComplianceBuilder get compliance =>
      _$this._compliance ??= new _i2.ComplianceBuilder();
  set compliance(_i2.ComplianceBuilder? compliance) =>
      _$this._compliance = compliance;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  ComplianceByResourceBuilder() {
    ComplianceByResource._init(this);
  }

  ComplianceByResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _compliance = $v.compliance?.toBuilder();
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
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
              compliance: _compliance?.build(),
              resourceId: resourceId,
              resourceType: resourceType);
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
