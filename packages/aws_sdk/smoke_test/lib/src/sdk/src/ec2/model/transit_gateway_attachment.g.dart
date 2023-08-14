// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayAttachment extends TransitGatewayAttachment {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? transitGatewayId;
  @override
  final String? transitGatewayOwnerId;
  @override
  final String? resourceOwnerId;
  @override
  final TransitGatewayAttachmentResourceType? resourceType;
  @override
  final String? resourceId;
  @override
  final TransitGatewayAttachmentState? state;
  @override
  final TransitGatewayAttachmentAssociation? association;
  @override
  final DateTime? creationTime;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TransitGatewayAttachment(
          [void Function(TransitGatewayAttachmentBuilder)? updates]) =>
      (new TransitGatewayAttachmentBuilder()..update(updates))._build();

  _$TransitGatewayAttachment._(
      {this.transitGatewayAttachmentId,
      this.transitGatewayId,
      this.transitGatewayOwnerId,
      this.resourceOwnerId,
      this.resourceType,
      this.resourceId,
      this.state,
      this.association,
      this.creationTime,
      this.tags})
      : super._();

  @override
  TransitGatewayAttachment rebuild(
          void Function(TransitGatewayAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayAttachmentBuilder toBuilder() =>
      new TransitGatewayAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayAttachment &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        transitGatewayId == other.transitGatewayId &&
        transitGatewayOwnerId == other.transitGatewayOwnerId &&
        resourceOwnerId == other.resourceOwnerId &&
        resourceType == other.resourceType &&
        resourceId == other.resourceId &&
        state == other.state &&
        association == other.association &&
        creationTime == other.creationTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, transitGatewayOwnerId.hashCode);
    _$hash = $jc(_$hash, resourceOwnerId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, association.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayAttachmentBuilder
    implements
        Builder<TransitGatewayAttachment, TransitGatewayAttachmentBuilder> {
  _$TransitGatewayAttachment? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _transitGatewayOwnerId;
  String? get transitGatewayOwnerId => _$this._transitGatewayOwnerId;
  set transitGatewayOwnerId(String? transitGatewayOwnerId) =>
      _$this._transitGatewayOwnerId = transitGatewayOwnerId;

  String? _resourceOwnerId;
  String? get resourceOwnerId => _$this._resourceOwnerId;
  set resourceOwnerId(String? resourceOwnerId) =>
      _$this._resourceOwnerId = resourceOwnerId;

  TransitGatewayAttachmentResourceType? _resourceType;
  TransitGatewayAttachmentResourceType? get resourceType =>
      _$this._resourceType;
  set resourceType(TransitGatewayAttachmentResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  TransitGatewayAttachmentState? _state;
  TransitGatewayAttachmentState? get state => _$this._state;
  set state(TransitGatewayAttachmentState? state) => _$this._state = state;

  TransitGatewayAttachmentAssociationBuilder? _association;
  TransitGatewayAttachmentAssociationBuilder get association =>
      _$this._association ??= new TransitGatewayAttachmentAssociationBuilder();
  set association(TransitGatewayAttachmentAssociationBuilder? association) =>
      _$this._association = association;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TransitGatewayAttachmentBuilder();

  TransitGatewayAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _transitGatewayId = $v.transitGatewayId;
      _transitGatewayOwnerId = $v.transitGatewayOwnerId;
      _resourceOwnerId = $v.resourceOwnerId;
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _state = $v.state;
      _association = $v.association?.toBuilder();
      _creationTime = $v.creationTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayAttachment;
  }

  @override
  void update(void Function(TransitGatewayAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayAttachment build() => _build();

  _$TransitGatewayAttachment _build() {
    _$TransitGatewayAttachment _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayAttachment._(
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              transitGatewayId: transitGatewayId,
              transitGatewayOwnerId: transitGatewayOwnerId,
              resourceOwnerId: resourceOwnerId,
              resourceType: resourceType,
              resourceId: resourceId,
              state: state,
              association: _association?.build(),
              creationTime: creationTime,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'association';
        _association?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayAttachment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
