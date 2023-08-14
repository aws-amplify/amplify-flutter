// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_connect_peer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayConnectPeer extends TransitGatewayConnectPeer {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? transitGatewayConnectPeerId;
  @override
  final TransitGatewayConnectPeerState? state;
  @override
  final DateTime? creationTime;
  @override
  final TransitGatewayConnectPeerConfiguration? connectPeerConfiguration;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TransitGatewayConnectPeer(
          [void Function(TransitGatewayConnectPeerBuilder)? updates]) =>
      (new TransitGatewayConnectPeerBuilder()..update(updates))._build();

  _$TransitGatewayConnectPeer._(
      {this.transitGatewayAttachmentId,
      this.transitGatewayConnectPeerId,
      this.state,
      this.creationTime,
      this.connectPeerConfiguration,
      this.tags})
      : super._();

  @override
  TransitGatewayConnectPeer rebuild(
          void Function(TransitGatewayConnectPeerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayConnectPeerBuilder toBuilder() =>
      new TransitGatewayConnectPeerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayConnectPeer &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        transitGatewayConnectPeerId == other.transitGatewayConnectPeerId &&
        state == other.state &&
        creationTime == other.creationTime &&
        connectPeerConfiguration == other.connectPeerConfiguration &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, transitGatewayConnectPeerId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, connectPeerConfiguration.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayConnectPeerBuilder
    implements
        Builder<TransitGatewayConnectPeer, TransitGatewayConnectPeerBuilder> {
  _$TransitGatewayConnectPeer? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  String? _transitGatewayConnectPeerId;
  String? get transitGatewayConnectPeerId =>
      _$this._transitGatewayConnectPeerId;
  set transitGatewayConnectPeerId(String? transitGatewayConnectPeerId) =>
      _$this._transitGatewayConnectPeerId = transitGatewayConnectPeerId;

  TransitGatewayConnectPeerState? _state;
  TransitGatewayConnectPeerState? get state => _$this._state;
  set state(TransitGatewayConnectPeerState? state) => _$this._state = state;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  TransitGatewayConnectPeerConfigurationBuilder? _connectPeerConfiguration;
  TransitGatewayConnectPeerConfigurationBuilder get connectPeerConfiguration =>
      _$this._connectPeerConfiguration ??=
          new TransitGatewayConnectPeerConfigurationBuilder();
  set connectPeerConfiguration(
          TransitGatewayConnectPeerConfigurationBuilder?
              connectPeerConfiguration) =>
      _$this._connectPeerConfiguration = connectPeerConfiguration;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TransitGatewayConnectPeerBuilder();

  TransitGatewayConnectPeerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _transitGatewayConnectPeerId = $v.transitGatewayConnectPeerId;
      _state = $v.state;
      _creationTime = $v.creationTime;
      _connectPeerConfiguration = $v.connectPeerConfiguration?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayConnectPeer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayConnectPeer;
  }

  @override
  void update(void Function(TransitGatewayConnectPeerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayConnectPeer build() => _build();

  _$TransitGatewayConnectPeer _build() {
    _$TransitGatewayConnectPeer _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayConnectPeer._(
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              transitGatewayConnectPeerId: transitGatewayConnectPeerId,
              state: state,
              creationTime: creationTime,
              connectPeerConfiguration: _connectPeerConfiguration?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connectPeerConfiguration';
        _connectPeerConfiguration?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayConnectPeer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
