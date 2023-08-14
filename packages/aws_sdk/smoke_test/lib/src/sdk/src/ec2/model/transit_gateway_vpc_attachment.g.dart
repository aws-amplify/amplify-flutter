// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_vpc_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayVpcAttachment extends TransitGatewayVpcAttachment {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? transitGatewayId;
  @override
  final String? vpcId;
  @override
  final String? vpcOwnerId;
  @override
  final TransitGatewayAttachmentState? state;
  @override
  final _i2.BuiltList<String>? subnetIds;
  @override
  final DateTime? creationTime;
  @override
  final TransitGatewayVpcAttachmentOptions? options;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TransitGatewayVpcAttachment(
          [void Function(TransitGatewayVpcAttachmentBuilder)? updates]) =>
      (new TransitGatewayVpcAttachmentBuilder()..update(updates))._build();

  _$TransitGatewayVpcAttachment._(
      {this.transitGatewayAttachmentId,
      this.transitGatewayId,
      this.vpcId,
      this.vpcOwnerId,
      this.state,
      this.subnetIds,
      this.creationTime,
      this.options,
      this.tags})
      : super._();

  @override
  TransitGatewayVpcAttachment rebuild(
          void Function(TransitGatewayVpcAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayVpcAttachmentBuilder toBuilder() =>
      new TransitGatewayVpcAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayVpcAttachment &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        transitGatewayId == other.transitGatewayId &&
        vpcId == other.vpcId &&
        vpcOwnerId == other.vpcOwnerId &&
        state == other.state &&
        subnetIds == other.subnetIds &&
        creationTime == other.creationTime &&
        options == other.options &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, vpcOwnerId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, subnetIds.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayVpcAttachmentBuilder
    implements
        Builder<TransitGatewayVpcAttachment,
            TransitGatewayVpcAttachmentBuilder> {
  _$TransitGatewayVpcAttachment? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _vpcOwnerId;
  String? get vpcOwnerId => _$this._vpcOwnerId;
  set vpcOwnerId(String? vpcOwnerId) => _$this._vpcOwnerId = vpcOwnerId;

  TransitGatewayAttachmentState? _state;
  TransitGatewayAttachmentState? get state => _$this._state;
  set state(TransitGatewayAttachmentState? state) => _$this._state = state;

  _i2.ListBuilder<String>? _subnetIds;
  _i2.ListBuilder<String> get subnetIds =>
      _$this._subnetIds ??= new _i2.ListBuilder<String>();
  set subnetIds(_i2.ListBuilder<String>? subnetIds) =>
      _$this._subnetIds = subnetIds;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  TransitGatewayVpcAttachmentOptionsBuilder? _options;
  TransitGatewayVpcAttachmentOptionsBuilder get options =>
      _$this._options ??= new TransitGatewayVpcAttachmentOptionsBuilder();
  set options(TransitGatewayVpcAttachmentOptionsBuilder? options) =>
      _$this._options = options;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TransitGatewayVpcAttachmentBuilder();

  TransitGatewayVpcAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _transitGatewayId = $v.transitGatewayId;
      _vpcId = $v.vpcId;
      _vpcOwnerId = $v.vpcOwnerId;
      _state = $v.state;
      _subnetIds = $v.subnetIds?.toBuilder();
      _creationTime = $v.creationTime;
      _options = $v.options?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayVpcAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayVpcAttachment;
  }

  @override
  void update(void Function(TransitGatewayVpcAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayVpcAttachment build() => _build();

  _$TransitGatewayVpcAttachment _build() {
    _$TransitGatewayVpcAttachment _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayVpcAttachment._(
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              transitGatewayId: transitGatewayId,
              vpcId: vpcId,
              vpcOwnerId: vpcOwnerId,
              state: state,
              subnetIds: _subnetIds?.build(),
              creationTime: creationTime,
              options: _options?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnetIds';
        _subnetIds?.build();

        _$failedField = 'options';
        _options?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayVpcAttachment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
