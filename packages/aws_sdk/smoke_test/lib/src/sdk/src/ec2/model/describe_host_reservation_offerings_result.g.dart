// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_host_reservation_offerings_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeHostReservationOfferingsResult
    extends DescribeHostReservationOfferingsResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<HostOffering>? offeringSet;

  factory _$DescribeHostReservationOfferingsResult(
          [void Function(DescribeHostReservationOfferingsResultBuilder)?
              updates]) =>
      (new DescribeHostReservationOfferingsResultBuilder()..update(updates))
          ._build();

  _$DescribeHostReservationOfferingsResult._({this.nextToken, this.offeringSet})
      : super._();

  @override
  DescribeHostReservationOfferingsResult rebuild(
          void Function(DescribeHostReservationOfferingsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeHostReservationOfferingsResultBuilder toBuilder() =>
      new DescribeHostReservationOfferingsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeHostReservationOfferingsResult &&
        nextToken == other.nextToken &&
        offeringSet == other.offeringSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, offeringSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeHostReservationOfferingsResultBuilder
    implements
        Builder<DescribeHostReservationOfferingsResult,
            DescribeHostReservationOfferingsResultBuilder> {
  _$DescribeHostReservationOfferingsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<HostOffering>? _offeringSet;
  _i2.ListBuilder<HostOffering> get offeringSet =>
      _$this._offeringSet ??= new _i2.ListBuilder<HostOffering>();
  set offeringSet(_i2.ListBuilder<HostOffering>? offeringSet) =>
      _$this._offeringSet = offeringSet;

  DescribeHostReservationOfferingsResultBuilder();

  DescribeHostReservationOfferingsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _offeringSet = $v.offeringSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeHostReservationOfferingsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeHostReservationOfferingsResult;
  }

  @override
  void update(
      void Function(DescribeHostReservationOfferingsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeHostReservationOfferingsResult build() => _build();

  _$DescribeHostReservationOfferingsResult _build() {
    _$DescribeHostReservationOfferingsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeHostReservationOfferingsResult._(
              nextToken: nextToken, offeringSet: _offeringSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'offeringSet';
        _offeringSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeHostReservationOfferingsResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
