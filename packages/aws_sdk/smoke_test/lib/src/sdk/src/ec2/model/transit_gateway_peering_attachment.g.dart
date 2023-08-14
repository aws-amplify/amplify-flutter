// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_peering_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPeeringAttachment
    extends TransitGatewayPeeringAttachment {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? accepterTransitGatewayAttachmentId;
  @override
  final PeeringTgwInfo? requesterTgwInfo;
  @override
  final PeeringTgwInfo? accepterTgwInfo;
  @override
  final TransitGatewayPeeringAttachmentOptions? options;
  @override
  final PeeringAttachmentStatus? status;
  @override
  final TransitGatewayAttachmentState? state;
  @override
  final DateTime? creationTime;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TransitGatewayPeeringAttachment(
          [void Function(TransitGatewayPeeringAttachmentBuilder)? updates]) =>
      (new TransitGatewayPeeringAttachmentBuilder()..update(updates))._build();

  _$TransitGatewayPeeringAttachment._(
      {this.transitGatewayAttachmentId,
      this.accepterTransitGatewayAttachmentId,
      this.requesterTgwInfo,
      this.accepterTgwInfo,
      this.options,
      this.status,
      this.state,
      this.creationTime,
      this.tags})
      : super._();

  @override
  TransitGatewayPeeringAttachment rebuild(
          void Function(TransitGatewayPeeringAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPeeringAttachmentBuilder toBuilder() =>
      new TransitGatewayPeeringAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPeeringAttachment &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        accepterTransitGatewayAttachmentId ==
            other.accepterTransitGatewayAttachmentId &&
        requesterTgwInfo == other.requesterTgwInfo &&
        accepterTgwInfo == other.accepterTgwInfo &&
        options == other.options &&
        status == other.status &&
        state == other.state &&
        creationTime == other.creationTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, accepterTransitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, requesterTgwInfo.hashCode);
    _$hash = $jc(_$hash, accepterTgwInfo.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPeeringAttachmentBuilder
    implements
        Builder<TransitGatewayPeeringAttachment,
            TransitGatewayPeeringAttachmentBuilder> {
  _$TransitGatewayPeeringAttachment? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  String? _accepterTransitGatewayAttachmentId;
  String? get accepterTransitGatewayAttachmentId =>
      _$this._accepterTransitGatewayAttachmentId;
  set accepterTransitGatewayAttachmentId(
          String? accepterTransitGatewayAttachmentId) =>
      _$this._accepterTransitGatewayAttachmentId =
          accepterTransitGatewayAttachmentId;

  PeeringTgwInfoBuilder? _requesterTgwInfo;
  PeeringTgwInfoBuilder get requesterTgwInfo =>
      _$this._requesterTgwInfo ??= new PeeringTgwInfoBuilder();
  set requesterTgwInfo(PeeringTgwInfoBuilder? requesterTgwInfo) =>
      _$this._requesterTgwInfo = requesterTgwInfo;

  PeeringTgwInfoBuilder? _accepterTgwInfo;
  PeeringTgwInfoBuilder get accepterTgwInfo =>
      _$this._accepterTgwInfo ??= new PeeringTgwInfoBuilder();
  set accepterTgwInfo(PeeringTgwInfoBuilder? accepterTgwInfo) =>
      _$this._accepterTgwInfo = accepterTgwInfo;

  TransitGatewayPeeringAttachmentOptionsBuilder? _options;
  TransitGatewayPeeringAttachmentOptionsBuilder get options =>
      _$this._options ??= new TransitGatewayPeeringAttachmentOptionsBuilder();
  set options(TransitGatewayPeeringAttachmentOptionsBuilder? options) =>
      _$this._options = options;

  PeeringAttachmentStatusBuilder? _status;
  PeeringAttachmentStatusBuilder get status =>
      _$this._status ??= new PeeringAttachmentStatusBuilder();
  set status(PeeringAttachmentStatusBuilder? status) => _$this._status = status;

  TransitGatewayAttachmentState? _state;
  TransitGatewayAttachmentState? get state => _$this._state;
  set state(TransitGatewayAttachmentState? state) => _$this._state = state;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TransitGatewayPeeringAttachmentBuilder();

  TransitGatewayPeeringAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _accepterTransitGatewayAttachmentId =
          $v.accepterTransitGatewayAttachmentId;
      _requesterTgwInfo = $v.requesterTgwInfo?.toBuilder();
      _accepterTgwInfo = $v.accepterTgwInfo?.toBuilder();
      _options = $v.options?.toBuilder();
      _status = $v.status?.toBuilder();
      _state = $v.state;
      _creationTime = $v.creationTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPeeringAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPeeringAttachment;
  }

  @override
  void update(void Function(TransitGatewayPeeringAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPeeringAttachment build() => _build();

  _$TransitGatewayPeeringAttachment _build() {
    _$TransitGatewayPeeringAttachment _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayPeeringAttachment._(
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              accepterTransitGatewayAttachmentId:
                  accepterTransitGatewayAttachmentId,
              requesterTgwInfo: _requesterTgwInfo?.build(),
              accepterTgwInfo: _accepterTgwInfo?.build(),
              options: _options?.build(),
              status: _status?.build(),
              state: state,
              creationTime: creationTime,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requesterTgwInfo';
        _requesterTgwInfo?.build();
        _$failedField = 'accepterTgwInfo';
        _accepterTgwInfo?.build();
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'status';
        _status?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayPeeringAttachment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
