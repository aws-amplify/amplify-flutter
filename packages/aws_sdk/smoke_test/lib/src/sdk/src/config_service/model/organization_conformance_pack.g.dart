// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_conformance_pack;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationConformancePack extends OrganizationConformancePack {
  @override
  final _i3.BuiltList<_i2.ConformancePackInputParameter>?
      conformancePackInputParameters;
  @override
  final String? deliveryS3Bucket;
  @override
  final String? deliveryS3KeyPrefix;
  @override
  final _i3.BuiltList<String>? excludedAccounts;
  @override
  final DateTime lastUpdateTime;
  @override
  final String organizationConformancePackArn;
  @override
  final String organizationConformancePackName;

  factory _$OrganizationConformancePack(
          [void Function(OrganizationConformancePackBuilder)? updates]) =>
      (new OrganizationConformancePackBuilder()..update(updates))._build();

  _$OrganizationConformancePack._(
      {this.conformancePackInputParameters,
      this.deliveryS3Bucket,
      this.deliveryS3KeyPrefix,
      this.excludedAccounts,
      required this.lastUpdateTime,
      required this.organizationConformancePackArn,
      required this.organizationConformancePackName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        lastUpdateTime, r'OrganizationConformancePack', 'lastUpdateTime');
    BuiltValueNullFieldError.checkNotNull(organizationConformancePackArn,
        r'OrganizationConformancePack', 'organizationConformancePackArn');
    BuiltValueNullFieldError.checkNotNull(organizationConformancePackName,
        r'OrganizationConformancePack', 'organizationConformancePackName');
  }

  @override
  OrganizationConformancePack rebuild(
          void Function(OrganizationConformancePackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationConformancePackBuilder toBuilder() =>
      new OrganizationConformancePackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationConformancePack &&
        conformancePackInputParameters ==
            other.conformancePackInputParameters &&
        deliveryS3Bucket == other.deliveryS3Bucket &&
        deliveryS3KeyPrefix == other.deliveryS3KeyPrefix &&
        excludedAccounts == other.excludedAccounts &&
        lastUpdateTime == other.lastUpdateTime &&
        organizationConformancePackArn ==
            other.organizationConformancePackArn &&
        organizationConformancePackName ==
            other.organizationConformancePackName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackInputParameters.hashCode);
    _$hash = $jc(_$hash, deliveryS3Bucket.hashCode);
    _$hash = $jc(_$hash, deliveryS3KeyPrefix.hashCode);
    _$hash = $jc(_$hash, excludedAccounts.hashCode);
    _$hash = $jc(_$hash, lastUpdateTime.hashCode);
    _$hash = $jc(_$hash, organizationConformancePackArn.hashCode);
    _$hash = $jc(_$hash, organizationConformancePackName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationConformancePackBuilder
    implements
        Builder<OrganizationConformancePack,
            OrganizationConformancePackBuilder> {
  _$OrganizationConformancePack? _$v;

  _i3.ListBuilder<_i2.ConformancePackInputParameter>?
      _conformancePackInputParameters;
  _i3.ListBuilder<_i2.ConformancePackInputParameter>
      get conformancePackInputParameters =>
          _$this._conformancePackInputParameters ??=
              new _i3.ListBuilder<_i2.ConformancePackInputParameter>();
  set conformancePackInputParameters(
          _i3.ListBuilder<_i2.ConformancePackInputParameter>?
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

  _i3.ListBuilder<String>? _excludedAccounts;
  _i3.ListBuilder<String> get excludedAccounts =>
      _$this._excludedAccounts ??= new _i3.ListBuilder<String>();
  set excludedAccounts(_i3.ListBuilder<String>? excludedAccounts) =>
      _$this._excludedAccounts = excludedAccounts;

  DateTime? _lastUpdateTime;
  DateTime? get lastUpdateTime => _$this._lastUpdateTime;
  set lastUpdateTime(DateTime? lastUpdateTime) =>
      _$this._lastUpdateTime = lastUpdateTime;

  String? _organizationConformancePackArn;
  String? get organizationConformancePackArn =>
      _$this._organizationConformancePackArn;
  set organizationConformancePackArn(String? organizationConformancePackArn) =>
      _$this._organizationConformancePackArn = organizationConformancePackArn;

  String? _organizationConformancePackName;
  String? get organizationConformancePackName =>
      _$this._organizationConformancePackName;
  set organizationConformancePackName(
          String? organizationConformancePackName) =>
      _$this._organizationConformancePackName = organizationConformancePackName;

  OrganizationConformancePackBuilder() {
    OrganizationConformancePack._init(this);
  }

  OrganizationConformancePackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackInputParameters =
          $v.conformancePackInputParameters?.toBuilder();
      _deliveryS3Bucket = $v.deliveryS3Bucket;
      _deliveryS3KeyPrefix = $v.deliveryS3KeyPrefix;
      _excludedAccounts = $v.excludedAccounts?.toBuilder();
      _lastUpdateTime = $v.lastUpdateTime;
      _organizationConformancePackArn = $v.organizationConformancePackArn;
      _organizationConformancePackName = $v.organizationConformancePackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationConformancePack other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationConformancePack;
  }

  @override
  void update(void Function(OrganizationConformancePackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationConformancePack build() => _build();

  _$OrganizationConformancePack _build() {
    _$OrganizationConformancePack _$result;
    try {
      _$result = _$v ??
          new _$OrganizationConformancePack._(
              conformancePackInputParameters:
                  _conformancePackInputParameters?.build(),
              deliveryS3Bucket: deliveryS3Bucket,
              deliveryS3KeyPrefix: deliveryS3KeyPrefix,
              excludedAccounts: _excludedAccounts?.build(),
              lastUpdateTime: BuiltValueNullFieldError.checkNotNull(
                  lastUpdateTime,
                  r'OrganizationConformancePack',
                  'lastUpdateTime'),
              organizationConformancePackArn:
                  BuiltValueNullFieldError.checkNotNull(
                      organizationConformancePackArn,
                      r'OrganizationConformancePack',
                      'organizationConformancePackArn'),
              organizationConformancePackName:
                  BuiltValueNullFieldError.checkNotNull(
                      organizationConformancePackName,
                      r'OrganizationConformancePack',
                      'organizationConformancePackName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackInputParameters';
        _conformancePackInputParameters?.build();

        _$failedField = 'excludedAccounts';
        _excludedAccounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganizationConformancePack', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
