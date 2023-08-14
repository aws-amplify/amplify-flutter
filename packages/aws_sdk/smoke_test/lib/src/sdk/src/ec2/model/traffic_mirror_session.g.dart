// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traffic_mirror_session.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrafficMirrorSession extends TrafficMirrorSession {
  @override
  final String? trafficMirrorSessionId;
  @override
  final String? trafficMirrorTargetId;
  @override
  final String? trafficMirrorFilterId;
  @override
  final String? networkInterfaceId;
  @override
  final String? ownerId;
  @override
  final int packetLength;
  @override
  final int sessionNumber;
  @override
  final int virtualNetworkId;
  @override
  final String? description;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TrafficMirrorSession(
          [void Function(TrafficMirrorSessionBuilder)? updates]) =>
      (new TrafficMirrorSessionBuilder()..update(updates))._build();

  _$TrafficMirrorSession._(
      {this.trafficMirrorSessionId,
      this.trafficMirrorTargetId,
      this.trafficMirrorFilterId,
      this.networkInterfaceId,
      this.ownerId,
      required this.packetLength,
      required this.sessionNumber,
      required this.virtualNetworkId,
      this.description,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        packetLength, r'TrafficMirrorSession', 'packetLength');
    BuiltValueNullFieldError.checkNotNull(
        sessionNumber, r'TrafficMirrorSession', 'sessionNumber');
    BuiltValueNullFieldError.checkNotNull(
        virtualNetworkId, r'TrafficMirrorSession', 'virtualNetworkId');
  }

  @override
  TrafficMirrorSession rebuild(
          void Function(TrafficMirrorSessionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrafficMirrorSessionBuilder toBuilder() =>
      new TrafficMirrorSessionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrafficMirrorSession &&
        trafficMirrorSessionId == other.trafficMirrorSessionId &&
        trafficMirrorTargetId == other.trafficMirrorTargetId &&
        trafficMirrorFilterId == other.trafficMirrorFilterId &&
        networkInterfaceId == other.networkInterfaceId &&
        ownerId == other.ownerId &&
        packetLength == other.packetLength &&
        sessionNumber == other.sessionNumber &&
        virtualNetworkId == other.virtualNetworkId &&
        description == other.description &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorSessionId.hashCode);
    _$hash = $jc(_$hash, trafficMirrorTargetId.hashCode);
    _$hash = $jc(_$hash, trafficMirrorFilterId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, packetLength.hashCode);
    _$hash = $jc(_$hash, sessionNumber.hashCode);
    _$hash = $jc(_$hash, virtualNetworkId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TrafficMirrorSessionBuilder
    implements Builder<TrafficMirrorSession, TrafficMirrorSessionBuilder> {
  _$TrafficMirrorSession? _$v;

  String? _trafficMirrorSessionId;
  String? get trafficMirrorSessionId => _$this._trafficMirrorSessionId;
  set trafficMirrorSessionId(String? trafficMirrorSessionId) =>
      _$this._trafficMirrorSessionId = trafficMirrorSessionId;

  String? _trafficMirrorTargetId;
  String? get trafficMirrorTargetId => _$this._trafficMirrorTargetId;
  set trafficMirrorTargetId(String? trafficMirrorTargetId) =>
      _$this._trafficMirrorTargetId = trafficMirrorTargetId;

  String? _trafficMirrorFilterId;
  String? get trafficMirrorFilterId => _$this._trafficMirrorFilterId;
  set trafficMirrorFilterId(String? trafficMirrorFilterId) =>
      _$this._trafficMirrorFilterId = trafficMirrorFilterId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  int? _packetLength;
  int? get packetLength => _$this._packetLength;
  set packetLength(int? packetLength) => _$this._packetLength = packetLength;

  int? _sessionNumber;
  int? get sessionNumber => _$this._sessionNumber;
  set sessionNumber(int? sessionNumber) =>
      _$this._sessionNumber = sessionNumber;

  int? _virtualNetworkId;
  int? get virtualNetworkId => _$this._virtualNetworkId;
  set virtualNetworkId(int? virtualNetworkId) =>
      _$this._virtualNetworkId = virtualNetworkId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TrafficMirrorSessionBuilder() {
    TrafficMirrorSession._init(this);
  }

  TrafficMirrorSessionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorSessionId = $v.trafficMirrorSessionId;
      _trafficMirrorTargetId = $v.trafficMirrorTargetId;
      _trafficMirrorFilterId = $v.trafficMirrorFilterId;
      _networkInterfaceId = $v.networkInterfaceId;
      _ownerId = $v.ownerId;
      _packetLength = $v.packetLength;
      _sessionNumber = $v.sessionNumber;
      _virtualNetworkId = $v.virtualNetworkId;
      _description = $v.description;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrafficMirrorSession other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrafficMirrorSession;
  }

  @override
  void update(void Function(TrafficMirrorSessionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrafficMirrorSession build() => _build();

  _$TrafficMirrorSession _build() {
    _$TrafficMirrorSession _$result;
    try {
      _$result = _$v ??
          new _$TrafficMirrorSession._(
              trafficMirrorSessionId: trafficMirrorSessionId,
              trafficMirrorTargetId: trafficMirrorTargetId,
              trafficMirrorFilterId: trafficMirrorFilterId,
              networkInterfaceId: networkInterfaceId,
              ownerId: ownerId,
              packetLength: BuiltValueNullFieldError.checkNotNull(
                  packetLength, r'TrafficMirrorSession', 'packetLength'),
              sessionNumber: BuiltValueNullFieldError.checkNotNull(
                  sessionNumber, r'TrafficMirrorSession', 'sessionNumber'),
              virtualNetworkId: BuiltValueNullFieldError.checkNotNull(
                  virtualNetworkId,
                  r'TrafficMirrorSession',
                  'virtualNetworkId'),
              description: description,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrafficMirrorSession', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
