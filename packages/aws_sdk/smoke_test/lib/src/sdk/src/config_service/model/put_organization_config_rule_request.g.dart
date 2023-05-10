// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_organization_config_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutOrganizationConfigRuleRequest
    extends PutOrganizationConfigRuleRequest {
  @override
  final String organizationConfigRuleName;
  @override
  final _i3.OrganizationManagedRuleMetadata? organizationManagedRuleMetadata;
  @override
  final _i4.OrganizationCustomRuleMetadata? organizationCustomRuleMetadata;
  @override
  final _i6.BuiltList<String>? excludedAccounts;
  @override
  final _i5.OrganizationCustomPolicyRuleMetadata?
      organizationCustomPolicyRuleMetadata;

  factory _$PutOrganizationConfigRuleRequest(
          [void Function(PutOrganizationConfigRuleRequestBuilder)? updates]) =>
      (new PutOrganizationConfigRuleRequestBuilder()..update(updates))._build();

  _$PutOrganizationConfigRuleRequest._(
      {required this.organizationConfigRuleName,
      this.organizationManagedRuleMetadata,
      this.organizationCustomRuleMetadata,
      this.excludedAccounts,
      this.organizationCustomPolicyRuleMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(organizationConfigRuleName,
        r'PutOrganizationConfigRuleRequest', 'organizationConfigRuleName');
  }

  @override
  PutOrganizationConfigRuleRequest rebuild(
          void Function(PutOrganizationConfigRuleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutOrganizationConfigRuleRequestBuilder toBuilder() =>
      new PutOrganizationConfigRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutOrganizationConfigRuleRequest &&
        organizationConfigRuleName == other.organizationConfigRuleName &&
        organizationManagedRuleMetadata ==
            other.organizationManagedRuleMetadata &&
        organizationCustomRuleMetadata ==
            other.organizationCustomRuleMetadata &&
        excludedAccounts == other.excludedAccounts &&
        organizationCustomPolicyRuleMetadata ==
            other.organizationCustomPolicyRuleMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConfigRuleName.hashCode);
    _$hash = $jc(_$hash, organizationManagedRuleMetadata.hashCode);
    _$hash = $jc(_$hash, organizationCustomRuleMetadata.hashCode);
    _$hash = $jc(_$hash, excludedAccounts.hashCode);
    _$hash = $jc(_$hash, organizationCustomPolicyRuleMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutOrganizationConfigRuleRequestBuilder
    implements
        Builder<PutOrganizationConfigRuleRequest,
            PutOrganizationConfigRuleRequestBuilder> {
  _$PutOrganizationConfigRuleRequest? _$v;

  String? _organizationConfigRuleName;
  String? get organizationConfigRuleName => _$this._organizationConfigRuleName;
  set organizationConfigRuleName(String? organizationConfigRuleName) =>
      _$this._organizationConfigRuleName = organizationConfigRuleName;

  _i3.OrganizationManagedRuleMetadataBuilder? _organizationManagedRuleMetadata;
  _i3.OrganizationManagedRuleMetadataBuilder
      get organizationManagedRuleMetadata =>
          _$this._organizationManagedRuleMetadata ??=
              new _i3.OrganizationManagedRuleMetadataBuilder();
  set organizationManagedRuleMetadata(
          _i3.OrganizationManagedRuleMetadataBuilder?
              organizationManagedRuleMetadata) =>
      _$this._organizationManagedRuleMetadata = organizationManagedRuleMetadata;

  _i4.OrganizationCustomRuleMetadataBuilder? _organizationCustomRuleMetadata;
  _i4.OrganizationCustomRuleMetadataBuilder
      get organizationCustomRuleMetadata =>
          _$this._organizationCustomRuleMetadata ??=
              new _i4.OrganizationCustomRuleMetadataBuilder();
  set organizationCustomRuleMetadata(
          _i4.OrganizationCustomRuleMetadataBuilder?
              organizationCustomRuleMetadata) =>
      _$this._organizationCustomRuleMetadata = organizationCustomRuleMetadata;

  _i6.ListBuilder<String>? _excludedAccounts;
  _i6.ListBuilder<String> get excludedAccounts =>
      _$this._excludedAccounts ??= new _i6.ListBuilder<String>();
  set excludedAccounts(_i6.ListBuilder<String>? excludedAccounts) =>
      _$this._excludedAccounts = excludedAccounts;

  _i5.OrganizationCustomPolicyRuleMetadataBuilder?
      _organizationCustomPolicyRuleMetadata;
  _i5.OrganizationCustomPolicyRuleMetadataBuilder
      get organizationCustomPolicyRuleMetadata =>
          _$this._organizationCustomPolicyRuleMetadata ??=
              new _i5.OrganizationCustomPolicyRuleMetadataBuilder();
  set organizationCustomPolicyRuleMetadata(
          _i5.OrganizationCustomPolicyRuleMetadataBuilder?
              organizationCustomPolicyRuleMetadata) =>
      _$this._organizationCustomPolicyRuleMetadata =
          organizationCustomPolicyRuleMetadata;

  PutOrganizationConfigRuleRequestBuilder() {
    PutOrganizationConfigRuleRequest._init(this);
  }

  PutOrganizationConfigRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConfigRuleName = $v.organizationConfigRuleName;
      _organizationManagedRuleMetadata =
          $v.organizationManagedRuleMetadata?.toBuilder();
      _organizationCustomRuleMetadata =
          $v.organizationCustomRuleMetadata?.toBuilder();
      _excludedAccounts = $v.excludedAccounts?.toBuilder();
      _organizationCustomPolicyRuleMetadata =
          $v.organizationCustomPolicyRuleMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutOrganizationConfigRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutOrganizationConfigRuleRequest;
  }

  @override
  void update(void Function(PutOrganizationConfigRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutOrganizationConfigRuleRequest build() => _build();

  _$PutOrganizationConfigRuleRequest _build() {
    _$PutOrganizationConfigRuleRequest _$result;
    try {
      _$result = _$v ??
          new _$PutOrganizationConfigRuleRequest._(
              organizationConfigRuleName: BuiltValueNullFieldError.checkNotNull(
                  organizationConfigRuleName,
                  r'PutOrganizationConfigRuleRequest',
                  'organizationConfigRuleName'),
              organizationManagedRuleMetadata:
                  _organizationManagedRuleMetadata?.build(),
              organizationCustomRuleMetadata:
                  _organizationCustomRuleMetadata?.build(),
              excludedAccounts: _excludedAccounts?.build(),
              organizationCustomPolicyRuleMetadata:
                  _organizationCustomPolicyRuleMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationManagedRuleMetadata';
        _organizationManagedRuleMetadata?.build();
        _$failedField = 'organizationCustomRuleMetadata';
        _organizationCustomRuleMetadata?.build();
        _$failedField = 'excludedAccounts';
        _excludedAccounts?.build();
        _$failedField = 'organizationCustomPolicyRuleMetadata';
        _organizationCustomPolicyRuleMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutOrganizationConfigRuleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
