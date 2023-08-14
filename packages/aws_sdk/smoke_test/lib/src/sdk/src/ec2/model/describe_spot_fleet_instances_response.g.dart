// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_fleet_instances_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotFleetInstancesResponse
    extends DescribeSpotFleetInstancesResponse {
  @override
  final _i2.BuiltList<ActiveInstance>? activeInstances;
  @override
  final String? nextToken;
  @override
  final String? spotFleetRequestId;

  factory _$DescribeSpotFleetInstancesResponse(
          [void Function(DescribeSpotFleetInstancesResponseBuilder)?
              updates]) =>
      (new DescribeSpotFleetInstancesResponseBuilder()..update(updates))
          ._build();

  _$DescribeSpotFleetInstancesResponse._(
      {this.activeInstances, this.nextToken, this.spotFleetRequestId})
      : super._();

  @override
  DescribeSpotFleetInstancesResponse rebuild(
          void Function(DescribeSpotFleetInstancesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotFleetInstancesResponseBuilder toBuilder() =>
      new DescribeSpotFleetInstancesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotFleetInstancesResponse &&
        activeInstances == other.activeInstances &&
        nextToken == other.nextToken &&
        spotFleetRequestId == other.spotFleetRequestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activeInstances.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotFleetInstancesResponseBuilder
    implements
        Builder<DescribeSpotFleetInstancesResponse,
            DescribeSpotFleetInstancesResponseBuilder> {
  _$DescribeSpotFleetInstancesResponse? _$v;

  _i2.ListBuilder<ActiveInstance>? _activeInstances;
  _i2.ListBuilder<ActiveInstance> get activeInstances =>
      _$this._activeInstances ??= new _i2.ListBuilder<ActiveInstance>();
  set activeInstances(_i2.ListBuilder<ActiveInstance>? activeInstances) =>
      _$this._activeInstances = activeInstances;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _spotFleetRequestId;
  String? get spotFleetRequestId => _$this._spotFleetRequestId;
  set spotFleetRequestId(String? spotFleetRequestId) =>
      _$this._spotFleetRequestId = spotFleetRequestId;

  DescribeSpotFleetInstancesResponseBuilder();

  DescribeSpotFleetInstancesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activeInstances = $v.activeInstances?.toBuilder();
      _nextToken = $v.nextToken;
      _spotFleetRequestId = $v.spotFleetRequestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotFleetInstancesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotFleetInstancesResponse;
  }

  @override
  void update(
      void Function(DescribeSpotFleetInstancesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotFleetInstancesResponse build() => _build();

  _$DescribeSpotFleetInstancesResponse _build() {
    _$DescribeSpotFleetInstancesResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeSpotFleetInstancesResponse._(
              activeInstances: _activeInstances?.build(),
              nextToken: nextToken,
              spotFleetRequestId: spotFleetRequestId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activeInstances';
        _activeInstances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSpotFleetInstancesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
