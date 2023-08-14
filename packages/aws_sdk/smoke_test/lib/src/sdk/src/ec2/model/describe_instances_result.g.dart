// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstancesResult extends DescribeInstancesResult {
  @override
  final _i2.BuiltList<Reservation>? reservations;
  @override
  final String? nextToken;

  factory _$DescribeInstancesResult(
          [void Function(DescribeInstancesResultBuilder)? updates]) =>
      (new DescribeInstancesResultBuilder()..update(updates))._build();

  _$DescribeInstancesResult._({this.reservations, this.nextToken}) : super._();

  @override
  DescribeInstancesResult rebuild(
          void Function(DescribeInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstancesResultBuilder toBuilder() =>
      new DescribeInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstancesResult &&
        reservations == other.reservations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstancesResultBuilder
    implements
        Builder<DescribeInstancesResult, DescribeInstancesResultBuilder> {
  _$DescribeInstancesResult? _$v;

  _i2.ListBuilder<Reservation>? _reservations;
  _i2.ListBuilder<Reservation> get reservations =>
      _$this._reservations ??= new _i2.ListBuilder<Reservation>();
  set reservations(_i2.ListBuilder<Reservation>? reservations) =>
      _$this._reservations = reservations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeInstancesResultBuilder();

  DescribeInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservations = $v.reservations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstancesResult;
  }

  @override
  void update(void Function(DescribeInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstancesResult build() => _build();

  _$DescribeInstancesResult _build() {
    _$DescribeInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstancesResult._(
              reservations: _reservations?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservations';
        _reservations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
