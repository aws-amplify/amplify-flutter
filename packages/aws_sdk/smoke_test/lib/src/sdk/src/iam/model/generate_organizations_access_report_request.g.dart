// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.generate_organizations_access_report_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GenerateOrganizationsAccessReportRequest
    extends GenerateOrganizationsAccessReportRequest {
  @override
  final String entityPath;
  @override
  final String? organizationsPolicyId;

  factory _$GenerateOrganizationsAccessReportRequest(
          [void Function(GenerateOrganizationsAccessReportRequestBuilder)?
              updates]) =>
      (new GenerateOrganizationsAccessReportRequestBuilder()..update(updates))
          ._build();

  _$GenerateOrganizationsAccessReportRequest._(
      {required this.entityPath, this.organizationsPolicyId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        entityPath, r'GenerateOrganizationsAccessReportRequest', 'entityPath');
  }

  @override
  GenerateOrganizationsAccessReportRequest rebuild(
          void Function(GenerateOrganizationsAccessReportRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenerateOrganizationsAccessReportRequestBuilder toBuilder() =>
      new GenerateOrganizationsAccessReportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenerateOrganizationsAccessReportRequest &&
        entityPath == other.entityPath &&
        organizationsPolicyId == other.organizationsPolicyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityPath.hashCode);
    _$hash = $jc(_$hash, organizationsPolicyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GenerateOrganizationsAccessReportRequestBuilder
    implements
        Builder<GenerateOrganizationsAccessReportRequest,
            GenerateOrganizationsAccessReportRequestBuilder> {
  _$GenerateOrganizationsAccessReportRequest? _$v;

  String? _entityPath;
  String? get entityPath => _$this._entityPath;
  set entityPath(String? entityPath) => _$this._entityPath = entityPath;

  String? _organizationsPolicyId;
  String? get organizationsPolicyId => _$this._organizationsPolicyId;
  set organizationsPolicyId(String? organizationsPolicyId) =>
      _$this._organizationsPolicyId = organizationsPolicyId;

  GenerateOrganizationsAccessReportRequestBuilder() {
    GenerateOrganizationsAccessReportRequest._init(this);
  }

  GenerateOrganizationsAccessReportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityPath = $v.entityPath;
      _organizationsPolicyId = $v.organizationsPolicyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenerateOrganizationsAccessReportRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenerateOrganizationsAccessReportRequest;
  }

  @override
  void update(
      void Function(GenerateOrganizationsAccessReportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenerateOrganizationsAccessReportRequest build() => _build();

  _$GenerateOrganizationsAccessReportRequest _build() {
    final _$result = _$v ??
        new _$GenerateOrganizationsAccessReportRequest._(
            entityPath: BuiltValueNullFieldError.checkNotNull(entityPath,
                r'GenerateOrganizationsAccessReportRequest', 'entityPath'),
            organizationsPolicyId: organizationsPolicyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
