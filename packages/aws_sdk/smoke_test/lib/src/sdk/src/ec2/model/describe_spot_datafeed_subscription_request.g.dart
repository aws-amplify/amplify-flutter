// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_datafeed_subscription_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotDatafeedSubscriptionRequest
    extends DescribeSpotDatafeedSubscriptionRequest {
  @override
  final bool dryRun;

  factory _$DescribeSpotDatafeedSubscriptionRequest(
          [void Function(DescribeSpotDatafeedSubscriptionRequestBuilder)?
              updates]) =>
      (new DescribeSpotDatafeedSubscriptionRequestBuilder()..update(updates))
          ._build();

  _$DescribeSpotDatafeedSubscriptionRequest._({required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSpotDatafeedSubscriptionRequest', 'dryRun');
  }

  @override
  DescribeSpotDatafeedSubscriptionRequest rebuild(
          void Function(DescribeSpotDatafeedSubscriptionRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotDatafeedSubscriptionRequestBuilder toBuilder() =>
      new DescribeSpotDatafeedSubscriptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotDatafeedSubscriptionRequest &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotDatafeedSubscriptionRequestBuilder
    implements
        Builder<DescribeSpotDatafeedSubscriptionRequest,
            DescribeSpotDatafeedSubscriptionRequestBuilder> {
  _$DescribeSpotDatafeedSubscriptionRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeSpotDatafeedSubscriptionRequestBuilder() {
    DescribeSpotDatafeedSubscriptionRequest._init(this);
  }

  DescribeSpotDatafeedSubscriptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotDatafeedSubscriptionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotDatafeedSubscriptionRequest;
  }

  @override
  void update(
      void Function(DescribeSpotDatafeedSubscriptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotDatafeedSubscriptionRequest build() => _build();

  _$DescribeSpotDatafeedSubscriptionRequest _build() {
    final _$result = _$v ??
        new _$DescribeSpotDatafeedSubscriptionRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeSpotDatafeedSubscriptionRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
