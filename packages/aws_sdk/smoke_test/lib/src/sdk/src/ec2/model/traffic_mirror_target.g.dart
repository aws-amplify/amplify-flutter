// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traffic_mirror_target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrafficMirrorTarget extends TrafficMirrorTarget {
  @override
  final String? trafficMirrorTargetId;
  @override
  final String? networkInterfaceId;
  @override
  final String? networkLoadBalancerArn;
  @override
  final TrafficMirrorTargetType? type;
  @override
  final String? description;
  @override
  final String? ownerId;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? gatewayLoadBalancerEndpointId;

  factory _$TrafficMirrorTarget(
          [void Function(TrafficMirrorTargetBuilder)? updates]) =>
      (new TrafficMirrorTargetBuilder()..update(updates))._build();

  _$TrafficMirrorTarget._(
      {this.trafficMirrorTargetId,
      this.networkInterfaceId,
      this.networkLoadBalancerArn,
      this.type,
      this.description,
      this.ownerId,
      this.tags,
      this.gatewayLoadBalancerEndpointId})
      : super._();

  @override
  TrafficMirrorTarget rebuild(
          void Function(TrafficMirrorTargetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrafficMirrorTargetBuilder toBuilder() =>
      new TrafficMirrorTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrafficMirrorTarget &&
        trafficMirrorTargetId == other.trafficMirrorTargetId &&
        networkInterfaceId == other.networkInterfaceId &&
        networkLoadBalancerArn == other.networkLoadBalancerArn &&
        type == other.type &&
        description == other.description &&
        ownerId == other.ownerId &&
        tags == other.tags &&
        gatewayLoadBalancerEndpointId == other.gatewayLoadBalancerEndpointId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorTargetId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, networkLoadBalancerArn.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, gatewayLoadBalancerEndpointId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TrafficMirrorTargetBuilder
    implements Builder<TrafficMirrorTarget, TrafficMirrorTargetBuilder> {
  _$TrafficMirrorTarget? _$v;

  String? _trafficMirrorTargetId;
  String? get trafficMirrorTargetId => _$this._trafficMirrorTargetId;
  set trafficMirrorTargetId(String? trafficMirrorTargetId) =>
      _$this._trafficMirrorTargetId = trafficMirrorTargetId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _networkLoadBalancerArn;
  String? get networkLoadBalancerArn => _$this._networkLoadBalancerArn;
  set networkLoadBalancerArn(String? networkLoadBalancerArn) =>
      _$this._networkLoadBalancerArn = networkLoadBalancerArn;

  TrafficMirrorTargetType? _type;
  TrafficMirrorTargetType? get type => _$this._type;
  set type(TrafficMirrorTargetType? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _gatewayLoadBalancerEndpointId;
  String? get gatewayLoadBalancerEndpointId =>
      _$this._gatewayLoadBalancerEndpointId;
  set gatewayLoadBalancerEndpointId(String? gatewayLoadBalancerEndpointId) =>
      _$this._gatewayLoadBalancerEndpointId = gatewayLoadBalancerEndpointId;

  TrafficMirrorTargetBuilder();

  TrafficMirrorTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorTargetId = $v.trafficMirrorTargetId;
      _networkInterfaceId = $v.networkInterfaceId;
      _networkLoadBalancerArn = $v.networkLoadBalancerArn;
      _type = $v.type;
      _description = $v.description;
      _ownerId = $v.ownerId;
      _tags = $v.tags?.toBuilder();
      _gatewayLoadBalancerEndpointId = $v.gatewayLoadBalancerEndpointId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrafficMirrorTarget other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrafficMirrorTarget;
  }

  @override
  void update(void Function(TrafficMirrorTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrafficMirrorTarget build() => _build();

  _$TrafficMirrorTarget _build() {
    _$TrafficMirrorTarget _$result;
    try {
      _$result = _$v ??
          new _$TrafficMirrorTarget._(
              trafficMirrorTargetId: trafficMirrorTargetId,
              networkInterfaceId: networkInterfaceId,
              networkLoadBalancerArn: networkLoadBalancerArn,
              type: type,
              description: description,
              ownerId: ownerId,
              tags: _tags?.build(),
              gatewayLoadBalancerEndpointId: gatewayLoadBalancerEndpointId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrafficMirrorTarget', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
