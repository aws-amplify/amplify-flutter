// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_policy_table.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPolicyTable extends TransitGatewayPolicyTable {
  @override
  final String? transitGatewayPolicyTableId;
  @override
  final String? transitGatewayId;
  @override
  final TransitGatewayPolicyTableState? state;
  @override
  final DateTime? creationTime;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TransitGatewayPolicyTable(
          [void Function(TransitGatewayPolicyTableBuilder)? updates]) =>
      (new TransitGatewayPolicyTableBuilder()..update(updates))._build();

  _$TransitGatewayPolicyTable._(
      {this.transitGatewayPolicyTableId,
      this.transitGatewayId,
      this.state,
      this.creationTime,
      this.tags})
      : super._();

  @override
  TransitGatewayPolicyTable rebuild(
          void Function(TransitGatewayPolicyTableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPolicyTableBuilder toBuilder() =>
      new TransitGatewayPolicyTableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPolicyTable &&
        transitGatewayPolicyTableId == other.transitGatewayPolicyTableId &&
        transitGatewayId == other.transitGatewayId &&
        state == other.state &&
        creationTime == other.creationTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTableId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPolicyTableBuilder
    implements
        Builder<TransitGatewayPolicyTable, TransitGatewayPolicyTableBuilder> {
  _$TransitGatewayPolicyTable? _$v;

  String? _transitGatewayPolicyTableId;
  String? get transitGatewayPolicyTableId =>
      _$this._transitGatewayPolicyTableId;
  set transitGatewayPolicyTableId(String? transitGatewayPolicyTableId) =>
      _$this._transitGatewayPolicyTableId = transitGatewayPolicyTableId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  TransitGatewayPolicyTableState? _state;
  TransitGatewayPolicyTableState? get state => _$this._state;
  set state(TransitGatewayPolicyTableState? state) => _$this._state = state;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TransitGatewayPolicyTableBuilder();

  TransitGatewayPolicyTableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTableId = $v.transitGatewayPolicyTableId;
      _transitGatewayId = $v.transitGatewayId;
      _state = $v.state;
      _creationTime = $v.creationTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPolicyTable other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPolicyTable;
  }

  @override
  void update(void Function(TransitGatewayPolicyTableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPolicyTable build() => _build();

  _$TransitGatewayPolicyTable _build() {
    _$TransitGatewayPolicyTable _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayPolicyTable._(
              transitGatewayPolicyTableId: transitGatewayPolicyTableId,
              transitGatewayId: transitGatewayId,
              state: state,
              creationTime: creationTime,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayPolicyTable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
