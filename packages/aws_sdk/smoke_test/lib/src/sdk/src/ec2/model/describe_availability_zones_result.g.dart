// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_availability_zones_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAvailabilityZonesResult
    extends DescribeAvailabilityZonesResult {
  @override
  final _i2.BuiltList<AvailabilityZone>? availabilityZones;

  factory _$DescribeAvailabilityZonesResult(
          [void Function(DescribeAvailabilityZonesResultBuilder)? updates]) =>
      (new DescribeAvailabilityZonesResultBuilder()..update(updates))._build();

  _$DescribeAvailabilityZonesResult._({this.availabilityZones}) : super._();

  @override
  DescribeAvailabilityZonesResult rebuild(
          void Function(DescribeAvailabilityZonesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAvailabilityZonesResultBuilder toBuilder() =>
      new DescribeAvailabilityZonesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAvailabilityZonesResult &&
        availabilityZones == other.availabilityZones;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZones.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAvailabilityZonesResultBuilder
    implements
        Builder<DescribeAvailabilityZonesResult,
            DescribeAvailabilityZonesResultBuilder> {
  _$DescribeAvailabilityZonesResult? _$v;

  _i2.ListBuilder<AvailabilityZone>? _availabilityZones;
  _i2.ListBuilder<AvailabilityZone> get availabilityZones =>
      _$this._availabilityZones ??= new _i2.ListBuilder<AvailabilityZone>();
  set availabilityZones(_i2.ListBuilder<AvailabilityZone>? availabilityZones) =>
      _$this._availabilityZones = availabilityZones;

  DescribeAvailabilityZonesResultBuilder();

  DescribeAvailabilityZonesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZones = $v.availabilityZones?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAvailabilityZonesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAvailabilityZonesResult;
  }

  @override
  void update(void Function(DescribeAvailabilityZonesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAvailabilityZonesResult build() => _build();

  _$DescribeAvailabilityZonesResult _build() {
    _$DescribeAvailabilityZonesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeAvailabilityZonesResult._(
              availabilityZones: _availabilityZones?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'availabilityZones';
        _availabilityZones?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAvailabilityZonesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
