// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_organization_conformance_pack_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutOrganizationConformancePackRequest
    extends PutOrganizationConformancePackRequest {
  @override
  final _i4.BuiltList<_i3.ConformancePackInputParameter>?
      conformancePackInputParameters;
  @override
  final String? deliveryS3Bucket;
  @override
  final String? deliveryS3KeyPrefix;
  @override
  final _i4.BuiltList<String>? excludedAccounts;
  @override
  final String organizationConformancePackName;
  @override
  final String? templateBody;
  @override
  final String? templateS3Uri;

  factory _$PutOrganizationConformancePackRequest(
          [void Function(PutOrganizationConformancePackRequestBuilder)?
              updates]) =>
      (new PutOrganizationConformancePackRequestBuilder()..update(updates))
          ._build();

  _$PutOrganizationConformancePackRequest._(
      {this.conformancePackInputParameters,
      this.deliveryS3Bucket,
      this.deliveryS3KeyPrefix,
      this.excludedAccounts,
      required this.organizationConformancePackName,
      this.templateBody,
      this.templateS3Uri})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        organizationConformancePackName,
        r'PutOrganizationConformancePackRequest',
        'organizationConformancePackName');
  }

  @override
  PutOrganizationConformancePackRequest rebuild(
          void Function(PutOrganizationConformancePackRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutOrganizationConformancePackRequestBuilder toBuilder() =>
      new PutOrganizationConformancePackRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutOrganizationConformancePackRequest &&
        conformancePackInputParameters ==
            other.conformancePackInputParameters &&
        deliveryS3Bucket == other.deliveryS3Bucket &&
        deliveryS3KeyPrefix == other.deliveryS3KeyPrefix &&
        excludedAccounts == other.excludedAccounts &&
        organizationConformancePackName ==
            other.organizationConformancePackName &&
        templateBody == other.templateBody &&
        templateS3Uri == other.templateS3Uri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackInputParameters.hashCode);
    _$hash = $jc(_$hash, deliveryS3Bucket.hashCode);
    _$hash = $jc(_$hash, deliveryS3KeyPrefix.hashCode);
    _$hash = $jc(_$hash, excludedAccounts.hashCode);
    _$hash = $jc(_$hash, organizationConformancePackName.hashCode);
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, templateS3Uri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutOrganizationConformancePackRequestBuilder
    implements
        Builder<PutOrganizationConformancePackRequest,
            PutOrganizationConformancePackRequestBuilder> {
  _$PutOrganizationConformancePackRequest? _$v;

  _i4.ListBuilder<_i3.ConformancePackInputParameter>?
      _conformancePackInputParameters;
  _i4.ListBuilder<_i3.ConformancePackInputParameter>
      get conformancePackInputParameters =>
          _$this._conformancePackInputParameters ??=
              new _i4.ListBuilder<_i3.ConformancePackInputParameter>();
  set conformancePackInputParameters(
          _i4.ListBuilder<_i3.ConformancePackInputParameter>?
              conformancePackInputParameters) =>
      _$this._conformancePackInputParameters = conformancePackInputParameters;

  String? _deliveryS3Bucket;
  String? get deliveryS3Bucket => _$this._deliveryS3Bucket;
  set deliveryS3Bucket(String? deliveryS3Bucket) =>
      _$this._deliveryS3Bucket = deliveryS3Bucket;

  String? _deliveryS3KeyPrefix;
  String? get deliveryS3KeyPrefix => _$this._deliveryS3KeyPrefix;
  set deliveryS3KeyPrefix(String? deliveryS3KeyPrefix) =>
      _$this._deliveryS3KeyPrefix = deliveryS3KeyPrefix;

  _i4.ListBuilder<String>? _excludedAccounts;
  _i4.ListBuilder<String> get excludedAccounts =>
      _$this._excludedAccounts ??= new _i4.ListBuilder<String>();
  set excludedAccounts(_i4.ListBuilder<String>? excludedAccounts) =>
      _$this._excludedAccounts = excludedAccounts;

  String? _organizationConformancePackName;
  String? get organizationConformancePackName =>
      _$this._organizationConformancePackName;
  set organizationConformancePackName(
          String? organizationConformancePackName) =>
      _$this._organizationConformancePackName = organizationConformancePackName;

  String? _templateBody;
  String? get templateBody => _$this._templateBody;
  set templateBody(String? templateBody) => _$this._templateBody = templateBody;

  String? _templateS3Uri;
  String? get templateS3Uri => _$this._templateS3Uri;
  set templateS3Uri(String? templateS3Uri) =>
      _$this._templateS3Uri = templateS3Uri;

  PutOrganizationConformancePackRequestBuilder() {
    PutOrganizationConformancePackRequest._init(this);
  }

  PutOrganizationConformancePackRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackInputParameters =
          $v.conformancePackInputParameters?.toBuilder();
      _deliveryS3Bucket = $v.deliveryS3Bucket;
      _deliveryS3KeyPrefix = $v.deliveryS3KeyPrefix;
      _excludedAccounts = $v.excludedAccounts?.toBuilder();
      _organizationConformancePackName = $v.organizationConformancePackName;
      _templateBody = $v.templateBody;
      _templateS3Uri = $v.templateS3Uri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutOrganizationConformancePackRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutOrganizationConformancePackRequest;
  }

  @override
  void update(
      void Function(PutOrganizationConformancePackRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutOrganizationConformancePackRequest build() => _build();

  _$PutOrganizationConformancePackRequest _build() {
    _$PutOrganizationConformancePackRequest _$result;
    try {
      _$result = _$v ??
          new _$PutOrganizationConformancePackRequest._(
              conformancePackInputParameters:
                  _conformancePackInputParameters?.build(),
              deliveryS3Bucket: deliveryS3Bucket,
              deliveryS3KeyPrefix: deliveryS3KeyPrefix,
              excludedAccounts: _excludedAccounts?.build(),
              organizationConformancePackName:
                  BuiltValueNullFieldError.checkNotNull(
                      organizationConformancePackName,
                      r'PutOrganizationConformancePackRequest',
                      'organizationConformancePackName'),
              templateBody: templateBody,
              templateS3Uri: templateS3Uri);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackInputParameters';
        _conformancePackInputParameters?.build();

        _$failedField = 'excludedAccounts';
        _excludedAccounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutOrganizationConformancePackRequest',
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
