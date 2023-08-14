// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_datafeed_subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotDatafeedSubscription extends SpotDatafeedSubscription {
  @override
  final String? bucket;
  @override
  final SpotInstanceStateFault? fault;
  @override
  final String? ownerId;
  @override
  final String? prefix;
  @override
  final DatafeedSubscriptionState? state;

  factory _$SpotDatafeedSubscription(
          [void Function(SpotDatafeedSubscriptionBuilder)? updates]) =>
      (new SpotDatafeedSubscriptionBuilder()..update(updates))._build();

  _$SpotDatafeedSubscription._(
      {this.bucket, this.fault, this.ownerId, this.prefix, this.state})
      : super._();

  @override
  SpotDatafeedSubscription rebuild(
          void Function(SpotDatafeedSubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotDatafeedSubscriptionBuilder toBuilder() =>
      new SpotDatafeedSubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotDatafeedSubscription &&
        bucket == other.bucket &&
        fault == other.fault &&
        ownerId == other.ownerId &&
        prefix == other.prefix &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, fault.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotDatafeedSubscriptionBuilder
    implements
        Builder<SpotDatafeedSubscription, SpotDatafeedSubscriptionBuilder> {
  _$SpotDatafeedSubscription? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  SpotInstanceStateFaultBuilder? _fault;
  SpotInstanceStateFaultBuilder get fault =>
      _$this._fault ??= new SpotInstanceStateFaultBuilder();
  set fault(SpotInstanceStateFaultBuilder? fault) => _$this._fault = fault;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  DatafeedSubscriptionState? _state;
  DatafeedSubscriptionState? get state => _$this._state;
  set state(DatafeedSubscriptionState? state) => _$this._state = state;

  SpotDatafeedSubscriptionBuilder();

  SpotDatafeedSubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _fault = $v.fault?.toBuilder();
      _ownerId = $v.ownerId;
      _prefix = $v.prefix;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotDatafeedSubscription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotDatafeedSubscription;
  }

  @override
  void update(void Function(SpotDatafeedSubscriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotDatafeedSubscription build() => _build();

  _$SpotDatafeedSubscription _build() {
    _$SpotDatafeedSubscription _$result;
    try {
      _$result = _$v ??
          new _$SpotDatafeedSubscription._(
              bucket: bucket,
              fault: _fault?.build(),
              ownerId: ownerId,
              prefix: prefix,
              state: state);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fault';
        _fault?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotDatafeedSubscription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
