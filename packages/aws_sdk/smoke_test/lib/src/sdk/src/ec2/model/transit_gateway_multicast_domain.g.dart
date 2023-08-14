// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_multicast_domain.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayMulticastDomain extends TransitGatewayMulticastDomain {
  @override
  final String? transitGatewayMulticastDomainId;
  @override
  final String? transitGatewayId;
  @override
  final String? transitGatewayMulticastDomainArn;
  @override
  final String? ownerId;
  @override
  final TransitGatewayMulticastDomainOptions? options;
  @override
  final TransitGatewayMulticastDomainState? state;
  @override
  final DateTime? creationTime;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TransitGatewayMulticastDomain(
          [void Function(TransitGatewayMulticastDomainBuilder)? updates]) =>
      (new TransitGatewayMulticastDomainBuilder()..update(updates))._build();

  _$TransitGatewayMulticastDomain._(
      {this.transitGatewayMulticastDomainId,
      this.transitGatewayId,
      this.transitGatewayMulticastDomainArn,
      this.ownerId,
      this.options,
      this.state,
      this.creationTime,
      this.tags})
      : super._();

  @override
  TransitGatewayMulticastDomain rebuild(
          void Function(TransitGatewayMulticastDomainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayMulticastDomainBuilder toBuilder() =>
      new TransitGatewayMulticastDomainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayMulticastDomain &&
        transitGatewayMulticastDomainId ==
            other.transitGatewayMulticastDomainId &&
        transitGatewayId == other.transitGatewayId &&
        transitGatewayMulticastDomainArn ==
            other.transitGatewayMulticastDomainArn &&
        ownerId == other.ownerId &&
        options == other.options &&
        state == other.state &&
        creationTime == other.creationTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomainId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, transitGatewayMulticastDomainArn.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayMulticastDomainBuilder
    implements
        Builder<TransitGatewayMulticastDomain,
            TransitGatewayMulticastDomainBuilder> {
  _$TransitGatewayMulticastDomain? _$v;

  String? _transitGatewayMulticastDomainId;
  String? get transitGatewayMulticastDomainId =>
      _$this._transitGatewayMulticastDomainId;
  set transitGatewayMulticastDomainId(
          String? transitGatewayMulticastDomainId) =>
      _$this._transitGatewayMulticastDomainId = transitGatewayMulticastDomainId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _transitGatewayMulticastDomainArn;
  String? get transitGatewayMulticastDomainArn =>
      _$this._transitGatewayMulticastDomainArn;
  set transitGatewayMulticastDomainArn(
          String? transitGatewayMulticastDomainArn) =>
      _$this._transitGatewayMulticastDomainArn =
          transitGatewayMulticastDomainArn;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  TransitGatewayMulticastDomainOptionsBuilder? _options;
  TransitGatewayMulticastDomainOptionsBuilder get options =>
      _$this._options ??= new TransitGatewayMulticastDomainOptionsBuilder();
  set options(TransitGatewayMulticastDomainOptionsBuilder? options) =>
      _$this._options = options;

  TransitGatewayMulticastDomainState? _state;
  TransitGatewayMulticastDomainState? get state => _$this._state;
  set state(TransitGatewayMulticastDomainState? state) => _$this._state = state;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TransitGatewayMulticastDomainBuilder();

  TransitGatewayMulticastDomainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomainId = $v.transitGatewayMulticastDomainId;
      _transitGatewayId = $v.transitGatewayId;
      _transitGatewayMulticastDomainArn = $v.transitGatewayMulticastDomainArn;
      _ownerId = $v.ownerId;
      _options = $v.options?.toBuilder();
      _state = $v.state;
      _creationTime = $v.creationTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayMulticastDomain other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayMulticastDomain;
  }

  @override
  void update(void Function(TransitGatewayMulticastDomainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayMulticastDomain build() => _build();

  _$TransitGatewayMulticastDomain _build() {
    _$TransitGatewayMulticastDomain _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayMulticastDomain._(
              transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
              transitGatewayId: transitGatewayId,
              transitGatewayMulticastDomainArn:
                  transitGatewayMulticastDomainArn,
              ownerId: ownerId,
              options: _options?.build(),
              state: state,
              creationTime: creationTime,
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
            r'TransitGatewayMulticastDomain', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
