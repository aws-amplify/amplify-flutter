// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_connect.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayConnect extends TransitGatewayConnect {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? transportTransitGatewayAttachmentId;
  @override
  final String? transitGatewayId;
  @override
  final TransitGatewayAttachmentState? state;
  @override
  final DateTime? creationTime;
  @override
  final TransitGatewayConnectOptions? options;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TransitGatewayConnect(
          [void Function(TransitGatewayConnectBuilder)? updates]) =>
      (new TransitGatewayConnectBuilder()..update(updates))._build();

  _$TransitGatewayConnect._(
      {this.transitGatewayAttachmentId,
      this.transportTransitGatewayAttachmentId,
      this.transitGatewayId,
      this.state,
      this.creationTime,
      this.options,
      this.tags})
      : super._();

  @override
  TransitGatewayConnect rebuild(
          void Function(TransitGatewayConnectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayConnectBuilder toBuilder() =>
      new TransitGatewayConnectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayConnect &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        transportTransitGatewayAttachmentId ==
            other.transportTransitGatewayAttachmentId &&
        transitGatewayId == other.transitGatewayId &&
        state == other.state &&
        creationTime == other.creationTime &&
        options == other.options &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, transportTransitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayConnectBuilder
    implements Builder<TransitGatewayConnect, TransitGatewayConnectBuilder> {
  _$TransitGatewayConnect? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  String? _transportTransitGatewayAttachmentId;
  String? get transportTransitGatewayAttachmentId =>
      _$this._transportTransitGatewayAttachmentId;
  set transportTransitGatewayAttachmentId(
          String? transportTransitGatewayAttachmentId) =>
      _$this._transportTransitGatewayAttachmentId =
          transportTransitGatewayAttachmentId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  TransitGatewayAttachmentState? _state;
  TransitGatewayAttachmentState? get state => _$this._state;
  set state(TransitGatewayAttachmentState? state) => _$this._state = state;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  TransitGatewayConnectOptionsBuilder? _options;
  TransitGatewayConnectOptionsBuilder get options =>
      _$this._options ??= new TransitGatewayConnectOptionsBuilder();
  set options(TransitGatewayConnectOptionsBuilder? options) =>
      _$this._options = options;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TransitGatewayConnectBuilder();

  TransitGatewayConnectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _transportTransitGatewayAttachmentId =
          $v.transportTransitGatewayAttachmentId;
      _transitGatewayId = $v.transitGatewayId;
      _state = $v.state;
      _creationTime = $v.creationTime;
      _options = $v.options?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayConnect other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayConnect;
  }

  @override
  void update(void Function(TransitGatewayConnectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayConnect build() => _build();

  _$TransitGatewayConnect _build() {
    _$TransitGatewayConnect _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayConnect._(
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              transportTransitGatewayAttachmentId:
                  transportTransitGatewayAttachmentId,
              transitGatewayId: transitGatewayId,
              state: state,
              creationTime: creationTime,
              options: _options?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayConnect', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
