// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGateway extends TransitGateway {
  @override
  final String? transitGatewayId;
  @override
  final String? transitGatewayArn;
  @override
  final TransitGatewayState? state;
  @override
  final String? ownerId;
  @override
  final String? description;
  @override
  final DateTime? creationTime;
  @override
  final TransitGatewayOptions? options;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TransitGateway([void Function(TransitGatewayBuilder)? updates]) =>
      (new TransitGatewayBuilder()..update(updates))._build();

  _$TransitGateway._(
      {this.transitGatewayId,
      this.transitGatewayArn,
      this.state,
      this.ownerId,
      this.description,
      this.creationTime,
      this.options,
      this.tags})
      : super._();

  @override
  TransitGateway rebuild(void Function(TransitGatewayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayBuilder toBuilder() =>
      new TransitGatewayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGateway &&
        transitGatewayId == other.transitGatewayId &&
        transitGatewayArn == other.transitGatewayArn &&
        state == other.state &&
        ownerId == other.ownerId &&
        description == other.description &&
        creationTime == other.creationTime &&
        options == other.options &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, transitGatewayArn.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayBuilder
    implements Builder<TransitGateway, TransitGatewayBuilder> {
  _$TransitGateway? _$v;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _transitGatewayArn;
  String? get transitGatewayArn => _$this._transitGatewayArn;
  set transitGatewayArn(String? transitGatewayArn) =>
      _$this._transitGatewayArn = transitGatewayArn;

  TransitGatewayState? _state;
  TransitGatewayState? get state => _$this._state;
  set state(TransitGatewayState? state) => _$this._state = state;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  TransitGatewayOptionsBuilder? _options;
  TransitGatewayOptionsBuilder get options =>
      _$this._options ??= new TransitGatewayOptionsBuilder();
  set options(TransitGatewayOptionsBuilder? options) =>
      _$this._options = options;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TransitGatewayBuilder();

  TransitGatewayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayId = $v.transitGatewayId;
      _transitGatewayArn = $v.transitGatewayArn;
      _state = $v.state;
      _ownerId = $v.ownerId;
      _description = $v.description;
      _creationTime = $v.creationTime;
      _options = $v.options?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGateway other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGateway;
  }

  @override
  void update(void Function(TransitGatewayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGateway build() => _build();

  _$TransitGateway _build() {
    _$TransitGateway _$result;
    try {
      _$result = _$v ??
          new _$TransitGateway._(
              transitGatewayId: transitGatewayId,
              transitGatewayArn: transitGatewayArn,
              state: state,
              ownerId: ownerId,
              description: description,
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
            r'TransitGateway', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
