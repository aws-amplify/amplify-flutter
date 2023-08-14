// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_instance_connect_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInstanceConnectEndpointRequest
    extends CreateInstanceConnectEndpointRequest {
  @override
  final bool dryRun;
  @override
  final String? subnetId;
  @override
  final _i3.BuiltList<String>? securityGroupIds;
  @override
  final bool preserveClientIp;
  @override
  final String? clientToken;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateInstanceConnectEndpointRequest(
          [void Function(CreateInstanceConnectEndpointRequestBuilder)?
              updates]) =>
      (new CreateInstanceConnectEndpointRequestBuilder()..update(updates))
          ._build();

  _$CreateInstanceConnectEndpointRequest._(
      {required this.dryRun,
      this.subnetId,
      this.securityGroupIds,
      required this.preserveClientIp,
      this.clientToken,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateInstanceConnectEndpointRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(preserveClientIp,
        r'CreateInstanceConnectEndpointRequest', 'preserveClientIp');
  }

  @override
  CreateInstanceConnectEndpointRequest rebuild(
          void Function(CreateInstanceConnectEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInstanceConnectEndpointRequestBuilder toBuilder() =>
      new CreateInstanceConnectEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInstanceConnectEndpointRequest &&
        dryRun == other.dryRun &&
        subnetId == other.subnetId &&
        securityGroupIds == other.securityGroupIds &&
        preserveClientIp == other.preserveClientIp &&
        clientToken == other.clientToken &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, preserveClientIp.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateInstanceConnectEndpointRequestBuilder
    implements
        Builder<CreateInstanceConnectEndpointRequest,
            CreateInstanceConnectEndpointRequestBuilder> {
  _$CreateInstanceConnectEndpointRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  _i3.ListBuilder<String>? _securityGroupIds;
  _i3.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i3.ListBuilder<String>();
  set securityGroupIds(_i3.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  bool? _preserveClientIp;
  bool? get preserveClientIp => _$this._preserveClientIp;
  set preserveClientIp(bool? preserveClientIp) =>
      _$this._preserveClientIp = preserveClientIp;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateInstanceConnectEndpointRequestBuilder() {
    CreateInstanceConnectEndpointRequest._init(this);
  }

  CreateInstanceConnectEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _subnetId = $v.subnetId;
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _preserveClientIp = $v.preserveClientIp;
      _clientToken = $v.clientToken;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInstanceConnectEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInstanceConnectEndpointRequest;
  }

  @override
  void update(
      void Function(CreateInstanceConnectEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInstanceConnectEndpointRequest build() => _build();

  _$CreateInstanceConnectEndpointRequest _build() {
    _$CreateInstanceConnectEndpointRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateInstanceConnectEndpointRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateInstanceConnectEndpointRequest', 'dryRun'),
              subnetId: subnetId,
              securityGroupIds: _securityGroupIds?.build(),
              preserveClientIp: BuiltValueNullFieldError.checkNotNull(
                  preserveClientIp,
                  r'CreateInstanceConnectEndpointRequest',
                  'preserveClientIp'),
              clientToken: clientToken,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInstanceConnectEndpointRequest',
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
