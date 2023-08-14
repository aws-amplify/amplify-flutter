// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_capacity_reservation_usage_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCapacityReservationUsageResult
    extends GetCapacityReservationUsageResult {
  @override
  final String? nextToken;
  @override
  final String? capacityReservationId;
  @override
  final String? instanceType;
  @override
  final int totalInstanceCount;
  @override
  final int availableInstanceCount;
  @override
  final CapacityReservationState? state;
  @override
  final _i2.BuiltList<InstanceUsage>? instanceUsages;

  factory _$GetCapacityReservationUsageResult(
          [void Function(GetCapacityReservationUsageResultBuilder)? updates]) =>
      (new GetCapacityReservationUsageResultBuilder()..update(updates))
          ._build();

  _$GetCapacityReservationUsageResult._(
      {this.nextToken,
      this.capacityReservationId,
      this.instanceType,
      required this.totalInstanceCount,
      required this.availableInstanceCount,
      this.state,
      this.instanceUsages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(totalInstanceCount,
        r'GetCapacityReservationUsageResult', 'totalInstanceCount');
    BuiltValueNullFieldError.checkNotNull(availableInstanceCount,
        r'GetCapacityReservationUsageResult', 'availableInstanceCount');
  }

  @override
  GetCapacityReservationUsageResult rebuild(
          void Function(GetCapacityReservationUsageResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCapacityReservationUsageResultBuilder toBuilder() =>
      new GetCapacityReservationUsageResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCapacityReservationUsageResult &&
        nextToken == other.nextToken &&
        capacityReservationId == other.capacityReservationId &&
        instanceType == other.instanceType &&
        totalInstanceCount == other.totalInstanceCount &&
        availableInstanceCount == other.availableInstanceCount &&
        state == other.state &&
        instanceUsages == other.instanceUsages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, capacityReservationId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, totalInstanceCount.hashCode);
    _$hash = $jc(_$hash, availableInstanceCount.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, instanceUsages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetCapacityReservationUsageResultBuilder
    implements
        Builder<GetCapacityReservationUsageResult,
            GetCapacityReservationUsageResultBuilder> {
  _$GetCapacityReservationUsageResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _capacityReservationId;
  String? get capacityReservationId => _$this._capacityReservationId;
  set capacityReservationId(String? capacityReservationId) =>
      _$this._capacityReservationId = capacityReservationId;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  int? _totalInstanceCount;
  int? get totalInstanceCount => _$this._totalInstanceCount;
  set totalInstanceCount(int? totalInstanceCount) =>
      _$this._totalInstanceCount = totalInstanceCount;

  int? _availableInstanceCount;
  int? get availableInstanceCount => _$this._availableInstanceCount;
  set availableInstanceCount(int? availableInstanceCount) =>
      _$this._availableInstanceCount = availableInstanceCount;

  CapacityReservationState? _state;
  CapacityReservationState? get state => _$this._state;
  set state(CapacityReservationState? state) => _$this._state = state;

  _i2.ListBuilder<InstanceUsage>? _instanceUsages;
  _i2.ListBuilder<InstanceUsage> get instanceUsages =>
      _$this._instanceUsages ??= new _i2.ListBuilder<InstanceUsage>();
  set instanceUsages(_i2.ListBuilder<InstanceUsage>? instanceUsages) =>
      _$this._instanceUsages = instanceUsages;

  GetCapacityReservationUsageResultBuilder() {
    GetCapacityReservationUsageResult._init(this);
  }

  GetCapacityReservationUsageResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _capacityReservationId = $v.capacityReservationId;
      _instanceType = $v.instanceType;
      _totalInstanceCount = $v.totalInstanceCount;
      _availableInstanceCount = $v.availableInstanceCount;
      _state = $v.state;
      _instanceUsages = $v.instanceUsages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCapacityReservationUsageResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCapacityReservationUsageResult;
  }

  @override
  void update(
      void Function(GetCapacityReservationUsageResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCapacityReservationUsageResult build() => _build();

  _$GetCapacityReservationUsageResult _build() {
    _$GetCapacityReservationUsageResult _$result;
    try {
      _$result = _$v ??
          new _$GetCapacityReservationUsageResult._(
              nextToken: nextToken,
              capacityReservationId: capacityReservationId,
              instanceType: instanceType,
              totalInstanceCount: BuiltValueNullFieldError.checkNotNull(
                  totalInstanceCount,
                  r'GetCapacityReservationUsageResult',
                  'totalInstanceCount'),
              availableInstanceCount: BuiltValueNullFieldError.checkNotNull(
                  availableInstanceCount,
                  r'GetCapacityReservationUsageResult',
                  'availableInstanceCount'),
              state: state,
              instanceUsages: _instanceUsages?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceUsages';
        _instanceUsages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetCapacityReservationUsageResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
