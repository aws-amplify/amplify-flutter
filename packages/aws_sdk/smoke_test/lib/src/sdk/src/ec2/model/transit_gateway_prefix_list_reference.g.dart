// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_prefix_list_reference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPrefixListReference
    extends TransitGatewayPrefixListReference {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? prefixListId;
  @override
  final String? prefixListOwnerId;
  @override
  final TransitGatewayPrefixListReferenceState? state;
  @override
  final bool blackhole;
  @override
  final TransitGatewayPrefixListAttachment? transitGatewayAttachment;

  factory _$TransitGatewayPrefixListReference(
          [void Function(TransitGatewayPrefixListReferenceBuilder)? updates]) =>
      (new TransitGatewayPrefixListReferenceBuilder()..update(updates))
          ._build();

  _$TransitGatewayPrefixListReference._(
      {this.transitGatewayRouteTableId,
      this.prefixListId,
      this.prefixListOwnerId,
      this.state,
      required this.blackhole,
      this.transitGatewayAttachment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        blackhole, r'TransitGatewayPrefixListReference', 'blackhole');
  }

  @override
  TransitGatewayPrefixListReference rebuild(
          void Function(TransitGatewayPrefixListReferenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPrefixListReferenceBuilder toBuilder() =>
      new TransitGatewayPrefixListReferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPrefixListReference &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        prefixListId == other.prefixListId &&
        prefixListOwnerId == other.prefixListOwnerId &&
        state == other.state &&
        blackhole == other.blackhole &&
        transitGatewayAttachment == other.transitGatewayAttachment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, prefixListOwnerId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, blackhole.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPrefixListReferenceBuilder
    implements
        Builder<TransitGatewayPrefixListReference,
            TransitGatewayPrefixListReferenceBuilder> {
  _$TransitGatewayPrefixListReference? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  String? _prefixListOwnerId;
  String? get prefixListOwnerId => _$this._prefixListOwnerId;
  set prefixListOwnerId(String? prefixListOwnerId) =>
      _$this._prefixListOwnerId = prefixListOwnerId;

  TransitGatewayPrefixListReferenceState? _state;
  TransitGatewayPrefixListReferenceState? get state => _$this._state;
  set state(TransitGatewayPrefixListReferenceState? state) =>
      _$this._state = state;

  bool? _blackhole;
  bool? get blackhole => _$this._blackhole;
  set blackhole(bool? blackhole) => _$this._blackhole = blackhole;

  TransitGatewayPrefixListAttachmentBuilder? _transitGatewayAttachment;
  TransitGatewayPrefixListAttachmentBuilder get transitGatewayAttachment =>
      _$this._transitGatewayAttachment ??=
          new TransitGatewayPrefixListAttachmentBuilder();
  set transitGatewayAttachment(
          TransitGatewayPrefixListAttachmentBuilder?
              transitGatewayAttachment) =>
      _$this._transitGatewayAttachment = transitGatewayAttachment;

  TransitGatewayPrefixListReferenceBuilder() {
    TransitGatewayPrefixListReference._init(this);
  }

  TransitGatewayPrefixListReferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _prefixListId = $v.prefixListId;
      _prefixListOwnerId = $v.prefixListOwnerId;
      _state = $v.state;
      _blackhole = $v.blackhole;
      _transitGatewayAttachment = $v.transitGatewayAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPrefixListReference other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPrefixListReference;
  }

  @override
  void update(
      void Function(TransitGatewayPrefixListReferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPrefixListReference build() => _build();

  _$TransitGatewayPrefixListReference _build() {
    _$TransitGatewayPrefixListReference _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayPrefixListReference._(
              transitGatewayRouteTableId: transitGatewayRouteTableId,
              prefixListId: prefixListId,
              prefixListOwnerId: prefixListOwnerId,
              state: state,
              blackhole: BuiltValueNullFieldError.checkNotNull(
                  blackhole, r'TransitGatewayPrefixListReference', 'blackhole'),
              transitGatewayAttachment: _transitGatewayAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayAttachment';
        _transitGatewayAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayPrefixListReference', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
