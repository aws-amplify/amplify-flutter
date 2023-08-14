// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_traffic_mirror_target_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrafficMirrorTargetRequest
    extends CreateTrafficMirrorTargetRequest {
  @override
  final String? networkInterfaceId;
  @override
  final String? networkLoadBalancerArn;
  @override
  final String? description;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;
  @override
  final String? clientToken;
  @override
  final String? gatewayLoadBalancerEndpointId;

  factory _$CreateTrafficMirrorTargetRequest(
          [void Function(CreateTrafficMirrorTargetRequestBuilder)? updates]) =>
      (new CreateTrafficMirrorTargetRequestBuilder()..update(updates))._build();

  _$CreateTrafficMirrorTargetRequest._(
      {this.networkInterfaceId,
      this.networkLoadBalancerArn,
      this.description,
      this.tagSpecifications,
      required this.dryRun,
      this.clientToken,
      this.gatewayLoadBalancerEndpointId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTrafficMirrorTargetRequest', 'dryRun');
  }

  @override
  CreateTrafficMirrorTargetRequest rebuild(
          void Function(CreateTrafficMirrorTargetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrafficMirrorTargetRequestBuilder toBuilder() =>
      new CreateTrafficMirrorTargetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrafficMirrorTargetRequest &&
        networkInterfaceId == other.networkInterfaceId &&
        networkLoadBalancerArn == other.networkLoadBalancerArn &&
        description == other.description &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken &&
        gatewayLoadBalancerEndpointId == other.gatewayLoadBalancerEndpointId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, networkLoadBalancerArn.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, gatewayLoadBalancerEndpointId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTrafficMirrorTargetRequestBuilder
    implements
        Builder<CreateTrafficMirrorTargetRequest,
            CreateTrafficMirrorTargetRequestBuilder> {
  _$CreateTrafficMirrorTargetRequest? _$v;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _networkLoadBalancerArn;
  String? get networkLoadBalancerArn => _$this._networkLoadBalancerArn;
  set networkLoadBalancerArn(String? networkLoadBalancerArn) =>
      _$this._networkLoadBalancerArn = networkLoadBalancerArn;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _gatewayLoadBalancerEndpointId;
  String? get gatewayLoadBalancerEndpointId =>
      _$this._gatewayLoadBalancerEndpointId;
  set gatewayLoadBalancerEndpointId(String? gatewayLoadBalancerEndpointId) =>
      _$this._gatewayLoadBalancerEndpointId = gatewayLoadBalancerEndpointId;

  CreateTrafficMirrorTargetRequestBuilder() {
    CreateTrafficMirrorTargetRequest._init(this);
  }

  CreateTrafficMirrorTargetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfaceId = $v.networkInterfaceId;
      _networkLoadBalancerArn = $v.networkLoadBalancerArn;
      _description = $v.description;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _gatewayLoadBalancerEndpointId = $v.gatewayLoadBalancerEndpointId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTrafficMirrorTargetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTrafficMirrorTargetRequest;
  }

  @override
  void update(void Function(CreateTrafficMirrorTargetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrafficMirrorTargetRequest build() => _build();

  _$CreateTrafficMirrorTargetRequest _build() {
    _$CreateTrafficMirrorTargetRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTrafficMirrorTargetRequest._(
              networkInterfaceId: networkInterfaceId,
              networkLoadBalancerArn: networkLoadBalancerArn,
              description: description,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateTrafficMirrorTargetRequest', 'dryRun'),
              clientToken: clientToken,
              gatewayLoadBalancerEndpointId: gatewayLoadBalancerEndpointId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTrafficMirrorTargetRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
