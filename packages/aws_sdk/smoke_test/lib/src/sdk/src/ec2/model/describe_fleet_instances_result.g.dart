// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fleet_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFleetInstancesResult extends DescribeFleetInstancesResult {
  @override
  final _i2.BuiltList<ActiveInstance>? activeInstances;
  @override
  final String? nextToken;
  @override
  final String? fleetId;

  factory _$DescribeFleetInstancesResult(
          [void Function(DescribeFleetInstancesResultBuilder)? updates]) =>
      (new DescribeFleetInstancesResultBuilder()..update(updates))._build();

  _$DescribeFleetInstancesResult._(
      {this.activeInstances, this.nextToken, this.fleetId})
      : super._();

  @override
  DescribeFleetInstancesResult rebuild(
          void Function(DescribeFleetInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFleetInstancesResultBuilder toBuilder() =>
      new DescribeFleetInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFleetInstancesResult &&
        activeInstances == other.activeInstances &&
        nextToken == other.nextToken &&
        fleetId == other.fleetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activeInstances.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, fleetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFleetInstancesResultBuilder
    implements
        Builder<DescribeFleetInstancesResult,
            DescribeFleetInstancesResultBuilder> {
  _$DescribeFleetInstancesResult? _$v;

  _i2.ListBuilder<ActiveInstance>? _activeInstances;
  _i2.ListBuilder<ActiveInstance> get activeInstances =>
      _$this._activeInstances ??= new _i2.ListBuilder<ActiveInstance>();
  set activeInstances(_i2.ListBuilder<ActiveInstance>? activeInstances) =>
      _$this._activeInstances = activeInstances;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _fleetId;
  String? get fleetId => _$this._fleetId;
  set fleetId(String? fleetId) => _$this._fleetId = fleetId;

  DescribeFleetInstancesResultBuilder();

  DescribeFleetInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activeInstances = $v.activeInstances?.toBuilder();
      _nextToken = $v.nextToken;
      _fleetId = $v.fleetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFleetInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFleetInstancesResult;
  }

  @override
  void update(void Function(DescribeFleetInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFleetInstancesResult build() => _build();

  _$DescribeFleetInstancesResult _build() {
    _$DescribeFleetInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeFleetInstancesResult._(
              activeInstances: _activeInstances?.build(),
              nextToken: nextToken,
              fleetId: fleetId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activeInstances';
        _activeInstances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFleetInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
