// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ipam_resource_discovery_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateIpamResourceDiscoveryRequest
    extends CreateIpamResourceDiscoveryRequest {
  @override
  final bool dryRun;
  @override
  final String? description;
  @override
  final _i3.BuiltList<AddIpamOperatingRegion>? operatingRegions;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;

  factory _$CreateIpamResourceDiscoveryRequest(
          [void Function(CreateIpamResourceDiscoveryRequestBuilder)?
              updates]) =>
      (new CreateIpamResourceDiscoveryRequestBuilder()..update(updates))
          ._build();

  _$CreateIpamResourceDiscoveryRequest._(
      {required this.dryRun,
      this.description,
      this.operatingRegions,
      this.tagSpecifications,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateIpamResourceDiscoveryRequest', 'dryRun');
  }

  @override
  CreateIpamResourceDiscoveryRequest rebuild(
          void Function(CreateIpamResourceDiscoveryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIpamResourceDiscoveryRequestBuilder toBuilder() =>
      new CreateIpamResourceDiscoveryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIpamResourceDiscoveryRequest &&
        dryRun == other.dryRun &&
        description == other.description &&
        operatingRegions == other.operatingRegions &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, operatingRegions.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateIpamResourceDiscoveryRequestBuilder
    implements
        Builder<CreateIpamResourceDiscoveryRequest,
            CreateIpamResourceDiscoveryRequestBuilder> {
  _$CreateIpamResourceDiscoveryRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<AddIpamOperatingRegion>? _operatingRegions;
  _i3.ListBuilder<AddIpamOperatingRegion> get operatingRegions =>
      _$this._operatingRegions ??=
          new _i3.ListBuilder<AddIpamOperatingRegion>();
  set operatingRegions(
          _i3.ListBuilder<AddIpamOperatingRegion>? operatingRegions) =>
      _$this._operatingRegions = operatingRegions;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateIpamResourceDiscoveryRequestBuilder() {
    CreateIpamResourceDiscoveryRequest._init(this);
  }

  CreateIpamResourceDiscoveryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _description = $v.description;
      _operatingRegions = $v.operatingRegions?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIpamResourceDiscoveryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateIpamResourceDiscoveryRequest;
  }

  @override
  void update(
      void Function(CreateIpamResourceDiscoveryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIpamResourceDiscoveryRequest build() => _build();

  _$CreateIpamResourceDiscoveryRequest _build() {
    _$CreateIpamResourceDiscoveryRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateIpamResourceDiscoveryRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateIpamResourceDiscoveryRequest', 'dryRun'),
              description: description,
              operatingRegions: _operatingRegions?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operatingRegions';
        _operatingRegions?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateIpamResourceDiscoveryRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
