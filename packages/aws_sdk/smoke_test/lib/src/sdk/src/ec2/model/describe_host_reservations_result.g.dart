// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_host_reservations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeHostReservationsResult extends DescribeHostReservationsResult {
  @override
  final _i2.BuiltList<HostReservation>? hostReservationSet;
  @override
  final String? nextToken;

  factory _$DescribeHostReservationsResult(
          [void Function(DescribeHostReservationsResultBuilder)? updates]) =>
      (new DescribeHostReservationsResultBuilder()..update(updates))._build();

  _$DescribeHostReservationsResult._({this.hostReservationSet, this.nextToken})
      : super._();

  @override
  DescribeHostReservationsResult rebuild(
          void Function(DescribeHostReservationsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeHostReservationsResultBuilder toBuilder() =>
      new DescribeHostReservationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeHostReservationsResult &&
        hostReservationSet == other.hostReservationSet &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hostReservationSet.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeHostReservationsResultBuilder
    implements
        Builder<DescribeHostReservationsResult,
            DescribeHostReservationsResultBuilder> {
  _$DescribeHostReservationsResult? _$v;

  _i2.ListBuilder<HostReservation>? _hostReservationSet;
  _i2.ListBuilder<HostReservation> get hostReservationSet =>
      _$this._hostReservationSet ??= new _i2.ListBuilder<HostReservation>();
  set hostReservationSet(
          _i2.ListBuilder<HostReservation>? hostReservationSet) =>
      _$this._hostReservationSet = hostReservationSet;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeHostReservationsResultBuilder();

  DescribeHostReservationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostReservationSet = $v.hostReservationSet?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeHostReservationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeHostReservationsResult;
  }

  @override
  void update(void Function(DescribeHostReservationsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeHostReservationsResult build() => _build();

  _$DescribeHostReservationsResult _build() {
    _$DescribeHostReservationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeHostReservationsResult._(
              hostReservationSet: _hostReservationSet?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hostReservationSet';
        _hostReservationSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeHostReservationsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
