// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_spot_datafeed_subscription_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSpotDatafeedSubscriptionResult
    extends CreateSpotDatafeedSubscriptionResult {
  @override
  final SpotDatafeedSubscription? spotDatafeedSubscription;

  factory _$CreateSpotDatafeedSubscriptionResult(
          [void Function(CreateSpotDatafeedSubscriptionResultBuilder)?
              updates]) =>
      (new CreateSpotDatafeedSubscriptionResultBuilder()..update(updates))
          ._build();

  _$CreateSpotDatafeedSubscriptionResult._({this.spotDatafeedSubscription})
      : super._();

  @override
  CreateSpotDatafeedSubscriptionResult rebuild(
          void Function(CreateSpotDatafeedSubscriptionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSpotDatafeedSubscriptionResultBuilder toBuilder() =>
      new CreateSpotDatafeedSubscriptionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSpotDatafeedSubscriptionResult &&
        spotDatafeedSubscription == other.spotDatafeedSubscription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, spotDatafeedSubscription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSpotDatafeedSubscriptionResultBuilder
    implements
        Builder<CreateSpotDatafeedSubscriptionResult,
            CreateSpotDatafeedSubscriptionResultBuilder> {
  _$CreateSpotDatafeedSubscriptionResult? _$v;

  SpotDatafeedSubscriptionBuilder? _spotDatafeedSubscription;
  SpotDatafeedSubscriptionBuilder get spotDatafeedSubscription =>
      _$this._spotDatafeedSubscription ??=
          new SpotDatafeedSubscriptionBuilder();
  set spotDatafeedSubscription(
          SpotDatafeedSubscriptionBuilder? spotDatafeedSubscription) =>
      _$this._spotDatafeedSubscription = spotDatafeedSubscription;

  CreateSpotDatafeedSubscriptionResultBuilder();

  CreateSpotDatafeedSubscriptionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spotDatafeedSubscription = $v.spotDatafeedSubscription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSpotDatafeedSubscriptionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSpotDatafeedSubscriptionResult;
  }

  @override
  void update(
      void Function(CreateSpotDatafeedSubscriptionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSpotDatafeedSubscriptionResult build() => _build();

  _$CreateSpotDatafeedSubscriptionResult _build() {
    _$CreateSpotDatafeedSubscriptionResult _$result;
    try {
      _$result = _$v ??
          new _$CreateSpotDatafeedSubscriptionResult._(
              spotDatafeedSubscription: _spotDatafeedSubscription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotDatafeedSubscription';
        _spotDatafeedSubscription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSpotDatafeedSubscriptionResult',
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
