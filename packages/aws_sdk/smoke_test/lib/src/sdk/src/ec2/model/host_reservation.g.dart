// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_reservation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HostReservation extends HostReservation {
  @override
  final int count;
  @override
  final CurrencyCodeValues? currencyCode;
  @override
  final int duration;
  @override
  final DateTime? end;
  @override
  final _i2.BuiltList<String>? hostIdSet;
  @override
  final String? hostReservationId;
  @override
  final String? hourlyPrice;
  @override
  final String? instanceFamily;
  @override
  final String? offeringId;
  @override
  final PaymentOption? paymentOption;
  @override
  final DateTime? start;
  @override
  final ReservationState? state;
  @override
  final String? upfrontPrice;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$HostReservation([void Function(HostReservationBuilder)? updates]) =>
      (new HostReservationBuilder()..update(updates))._build();

  _$HostReservation._(
      {required this.count,
      this.currencyCode,
      required this.duration,
      this.end,
      this.hostIdSet,
      this.hostReservationId,
      this.hourlyPrice,
      this.instanceFamily,
      this.offeringId,
      this.paymentOption,
      this.start,
      this.state,
      this.upfrontPrice,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(count, r'HostReservation', 'count');
    BuiltValueNullFieldError.checkNotNull(
        duration, r'HostReservation', 'duration');
  }

  @override
  HostReservation rebuild(void Function(HostReservationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostReservationBuilder toBuilder() =>
      new HostReservationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostReservation &&
        count == other.count &&
        currencyCode == other.currencyCode &&
        duration == other.duration &&
        end == other.end &&
        hostIdSet == other.hostIdSet &&
        hostReservationId == other.hostReservationId &&
        hourlyPrice == other.hourlyPrice &&
        instanceFamily == other.instanceFamily &&
        offeringId == other.offeringId &&
        paymentOption == other.paymentOption &&
        start == other.start &&
        state == other.state &&
        upfrontPrice == other.upfrontPrice &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, hostIdSet.hashCode);
    _$hash = $jc(_$hash, hostReservationId.hashCode);
    _$hash = $jc(_$hash, hourlyPrice.hashCode);
    _$hash = $jc(_$hash, instanceFamily.hashCode);
    _$hash = $jc(_$hash, offeringId.hashCode);
    _$hash = $jc(_$hash, paymentOption.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, upfrontPrice.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HostReservationBuilder
    implements Builder<HostReservation, HostReservationBuilder> {
  _$HostReservation? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  CurrencyCodeValues? _currencyCode;
  CurrencyCodeValues? get currencyCode => _$this._currencyCode;
  set currencyCode(CurrencyCodeValues? currencyCode) =>
      _$this._currencyCode = currencyCode;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  _i2.ListBuilder<String>? _hostIdSet;
  _i2.ListBuilder<String> get hostIdSet =>
      _$this._hostIdSet ??= new _i2.ListBuilder<String>();
  set hostIdSet(_i2.ListBuilder<String>? hostIdSet) =>
      _$this._hostIdSet = hostIdSet;

  String? _hostReservationId;
  String? get hostReservationId => _$this._hostReservationId;
  set hostReservationId(String? hostReservationId) =>
      _$this._hostReservationId = hostReservationId;

  String? _hourlyPrice;
  String? get hourlyPrice => _$this._hourlyPrice;
  set hourlyPrice(String? hourlyPrice) => _$this._hourlyPrice = hourlyPrice;

  String? _instanceFamily;
  String? get instanceFamily => _$this._instanceFamily;
  set instanceFamily(String? instanceFamily) =>
      _$this._instanceFamily = instanceFamily;

  String? _offeringId;
  String? get offeringId => _$this._offeringId;
  set offeringId(String? offeringId) => _$this._offeringId = offeringId;

  PaymentOption? _paymentOption;
  PaymentOption? get paymentOption => _$this._paymentOption;
  set paymentOption(PaymentOption? paymentOption) =>
      _$this._paymentOption = paymentOption;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  ReservationState? _state;
  ReservationState? get state => _$this._state;
  set state(ReservationState? state) => _$this._state = state;

  String? _upfrontPrice;
  String? get upfrontPrice => _$this._upfrontPrice;
  set upfrontPrice(String? upfrontPrice) => _$this._upfrontPrice = upfrontPrice;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  HostReservationBuilder() {
    HostReservation._init(this);
  }

  HostReservationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _currencyCode = $v.currencyCode;
      _duration = $v.duration;
      _end = $v.end;
      _hostIdSet = $v.hostIdSet?.toBuilder();
      _hostReservationId = $v.hostReservationId;
      _hourlyPrice = $v.hourlyPrice;
      _instanceFamily = $v.instanceFamily;
      _offeringId = $v.offeringId;
      _paymentOption = $v.paymentOption;
      _start = $v.start;
      _state = $v.state;
      _upfrontPrice = $v.upfrontPrice;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostReservation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HostReservation;
  }

  @override
  void update(void Function(HostReservationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostReservation build() => _build();

  _$HostReservation _build() {
    _$HostReservation _$result;
    try {
      _$result = _$v ??
          new _$HostReservation._(
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'HostReservation', 'count'),
              currencyCode: currencyCode,
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, r'HostReservation', 'duration'),
              end: end,
              hostIdSet: _hostIdSet?.build(),
              hostReservationId: hostReservationId,
              hourlyPrice: hourlyPrice,
              instanceFamily: instanceFamily,
              offeringId: offeringId,
              paymentOption: paymentOption,
              start: start,
              state: state,
              upfrontPrice: upfrontPrice,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hostIdSet';
        _hostIdSet?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HostReservation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
