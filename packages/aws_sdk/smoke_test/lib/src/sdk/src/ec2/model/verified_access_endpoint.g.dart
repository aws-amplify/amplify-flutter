// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_endpoint.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessEndpoint extends VerifiedAccessEndpoint {
  @override
  final String? verifiedAccessInstanceId;
  @override
  final String? verifiedAccessGroupId;
  @override
  final String? verifiedAccessEndpointId;
  @override
  final String? applicationDomain;
  @override
  final VerifiedAccessEndpointType? endpointType;
  @override
  final VerifiedAccessEndpointAttachmentType? attachmentType;
  @override
  final String? domainCertificateArn;
  @override
  final String? endpointDomain;
  @override
  final String? deviceValidationDomain;
  @override
  final _i2.BuiltList<String>? securityGroupIds;
  @override
  final VerifiedAccessEndpointLoadBalancerOptions? loadBalancerOptions;
  @override
  final VerifiedAccessEndpointEniOptions? networkInterfaceOptions;
  @override
  final VerifiedAccessEndpointStatus? status;
  @override
  final String? description;
  @override
  final String? creationTime;
  @override
  final String? lastUpdatedTime;
  @override
  final String? deletionTime;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$VerifiedAccessEndpoint(
          [void Function(VerifiedAccessEndpointBuilder)? updates]) =>
      (new VerifiedAccessEndpointBuilder()..update(updates))._build();

  _$VerifiedAccessEndpoint._(
      {this.verifiedAccessInstanceId,
      this.verifiedAccessGroupId,
      this.verifiedAccessEndpointId,
      this.applicationDomain,
      this.endpointType,
      this.attachmentType,
      this.domainCertificateArn,
      this.endpointDomain,
      this.deviceValidationDomain,
      this.securityGroupIds,
      this.loadBalancerOptions,
      this.networkInterfaceOptions,
      this.status,
      this.description,
      this.creationTime,
      this.lastUpdatedTime,
      this.deletionTime,
      this.tags})
      : super._();

  @override
  VerifiedAccessEndpoint rebuild(
          void Function(VerifiedAccessEndpointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessEndpointBuilder toBuilder() =>
      new VerifiedAccessEndpointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessEndpoint &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        verifiedAccessGroupId == other.verifiedAccessGroupId &&
        verifiedAccessEndpointId == other.verifiedAccessEndpointId &&
        applicationDomain == other.applicationDomain &&
        endpointType == other.endpointType &&
        attachmentType == other.attachmentType &&
        domainCertificateArn == other.domainCertificateArn &&
        endpointDomain == other.endpointDomain &&
        deviceValidationDomain == other.deviceValidationDomain &&
        securityGroupIds == other.securityGroupIds &&
        loadBalancerOptions == other.loadBalancerOptions &&
        networkInterfaceOptions == other.networkInterfaceOptions &&
        status == other.status &&
        description == other.description &&
        creationTime == other.creationTime &&
        lastUpdatedTime == other.lastUpdatedTime &&
        deletionTime == other.deletionTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, verifiedAccessGroupId.hashCode);
    _$hash = $jc(_$hash, verifiedAccessEndpointId.hashCode);
    _$hash = $jc(_$hash, applicationDomain.hashCode);
    _$hash = $jc(_$hash, endpointType.hashCode);
    _$hash = $jc(_$hash, attachmentType.hashCode);
    _$hash = $jc(_$hash, domainCertificateArn.hashCode);
    _$hash = $jc(_$hash, endpointDomain.hashCode);
    _$hash = $jc(_$hash, deviceValidationDomain.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, loadBalancerOptions.hashCode);
    _$hash = $jc(_$hash, networkInterfaceOptions.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, lastUpdatedTime.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessEndpointBuilder
    implements Builder<VerifiedAccessEndpoint, VerifiedAccessEndpointBuilder> {
  _$VerifiedAccessEndpoint? _$v;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  String? _verifiedAccessGroupId;
  String? get verifiedAccessGroupId => _$this._verifiedAccessGroupId;
  set verifiedAccessGroupId(String? verifiedAccessGroupId) =>
      _$this._verifiedAccessGroupId = verifiedAccessGroupId;

  String? _verifiedAccessEndpointId;
  String? get verifiedAccessEndpointId => _$this._verifiedAccessEndpointId;
  set verifiedAccessEndpointId(String? verifiedAccessEndpointId) =>
      _$this._verifiedAccessEndpointId = verifiedAccessEndpointId;

  String? _applicationDomain;
  String? get applicationDomain => _$this._applicationDomain;
  set applicationDomain(String? applicationDomain) =>
      _$this._applicationDomain = applicationDomain;

  VerifiedAccessEndpointType? _endpointType;
  VerifiedAccessEndpointType? get endpointType => _$this._endpointType;
  set endpointType(VerifiedAccessEndpointType? endpointType) =>
      _$this._endpointType = endpointType;

  VerifiedAccessEndpointAttachmentType? _attachmentType;
  VerifiedAccessEndpointAttachmentType? get attachmentType =>
      _$this._attachmentType;
  set attachmentType(VerifiedAccessEndpointAttachmentType? attachmentType) =>
      _$this._attachmentType = attachmentType;

  String? _domainCertificateArn;
  String? get domainCertificateArn => _$this._domainCertificateArn;
  set domainCertificateArn(String? domainCertificateArn) =>
      _$this._domainCertificateArn = domainCertificateArn;

  String? _endpointDomain;
  String? get endpointDomain => _$this._endpointDomain;
  set endpointDomain(String? endpointDomain) =>
      _$this._endpointDomain = endpointDomain;

  String? _deviceValidationDomain;
  String? get deviceValidationDomain => _$this._deviceValidationDomain;
  set deviceValidationDomain(String? deviceValidationDomain) =>
      _$this._deviceValidationDomain = deviceValidationDomain;

  _i2.ListBuilder<String>? _securityGroupIds;
  _i2.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i2.ListBuilder<String>();
  set securityGroupIds(_i2.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  VerifiedAccessEndpointLoadBalancerOptionsBuilder? _loadBalancerOptions;
  VerifiedAccessEndpointLoadBalancerOptionsBuilder get loadBalancerOptions =>
      _$this._loadBalancerOptions ??=
          new VerifiedAccessEndpointLoadBalancerOptionsBuilder();
  set loadBalancerOptions(
          VerifiedAccessEndpointLoadBalancerOptionsBuilder?
              loadBalancerOptions) =>
      _$this._loadBalancerOptions = loadBalancerOptions;

  VerifiedAccessEndpointEniOptionsBuilder? _networkInterfaceOptions;
  VerifiedAccessEndpointEniOptionsBuilder get networkInterfaceOptions =>
      _$this._networkInterfaceOptions ??=
          new VerifiedAccessEndpointEniOptionsBuilder();
  set networkInterfaceOptions(
          VerifiedAccessEndpointEniOptionsBuilder? networkInterfaceOptions) =>
      _$this._networkInterfaceOptions = networkInterfaceOptions;

  VerifiedAccessEndpointStatusBuilder? _status;
  VerifiedAccessEndpointStatusBuilder get status =>
      _$this._status ??= new VerifiedAccessEndpointStatusBuilder();
  set status(VerifiedAccessEndpointStatusBuilder? status) =>
      _$this._status = status;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _creationTime;
  String? get creationTime => _$this._creationTime;
  set creationTime(String? creationTime) => _$this._creationTime = creationTime;

  String? _lastUpdatedTime;
  String? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(String? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  String? _deletionTime;
  String? get deletionTime => _$this._deletionTime;
  set deletionTime(String? deletionTime) => _$this._deletionTime = deletionTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  VerifiedAccessEndpointBuilder();

  VerifiedAccessEndpointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _verifiedAccessGroupId = $v.verifiedAccessGroupId;
      _verifiedAccessEndpointId = $v.verifiedAccessEndpointId;
      _applicationDomain = $v.applicationDomain;
      _endpointType = $v.endpointType;
      _attachmentType = $v.attachmentType;
      _domainCertificateArn = $v.domainCertificateArn;
      _endpointDomain = $v.endpointDomain;
      _deviceValidationDomain = $v.deviceValidationDomain;
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _loadBalancerOptions = $v.loadBalancerOptions?.toBuilder();
      _networkInterfaceOptions = $v.networkInterfaceOptions?.toBuilder();
      _status = $v.status?.toBuilder();
      _description = $v.description;
      _creationTime = $v.creationTime;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _deletionTime = $v.deletionTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessEndpoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessEndpoint;
  }

  @override
  void update(void Function(VerifiedAccessEndpointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessEndpoint build() => _build();

  _$VerifiedAccessEndpoint _build() {
    _$VerifiedAccessEndpoint _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessEndpoint._(
              verifiedAccessInstanceId: verifiedAccessInstanceId,
              verifiedAccessGroupId: verifiedAccessGroupId,
              verifiedAccessEndpointId: verifiedAccessEndpointId,
              applicationDomain: applicationDomain,
              endpointType: endpointType,
              attachmentType: attachmentType,
              domainCertificateArn: domainCertificateArn,
              endpointDomain: endpointDomain,
              deviceValidationDomain: deviceValidationDomain,
              securityGroupIds: _securityGroupIds?.build(),
              loadBalancerOptions: _loadBalancerOptions?.build(),
              networkInterfaceOptions: _networkInterfaceOptions?.build(),
              status: _status?.build(),
              description: description,
              creationTime: creationTime,
              lastUpdatedTime: lastUpdatedTime,
              deletionTime: deletionTime,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
        _$failedField = 'loadBalancerOptions';
        _loadBalancerOptions?.build();
        _$failedField = 'networkInterfaceOptions';
        _networkInterfaceOptions?.build();
        _$failedField = 'status';
        _status?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedAccessEndpoint', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
