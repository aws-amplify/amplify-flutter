// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_spot_datafeed_subscription_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSpotDatafeedSubscriptionRequest
    extends CreateSpotDatafeedSubscriptionRequest {
  @override
  final String? bucket;
  @override
  final bool dryRun;
  @override
  final String? prefix;

  factory _$CreateSpotDatafeedSubscriptionRequest(
          [void Function(CreateSpotDatafeedSubscriptionRequestBuilder)?
              updates]) =>
      (new CreateSpotDatafeedSubscriptionRequestBuilder()..update(updates))
          ._build();

  _$CreateSpotDatafeedSubscriptionRequest._(
      {this.bucket, required this.dryRun, this.prefix})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateSpotDatafeedSubscriptionRequest', 'dryRun');
  }

  @override
  CreateSpotDatafeedSubscriptionRequest rebuild(
          void Function(CreateSpotDatafeedSubscriptionRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSpotDatafeedSubscriptionRequestBuilder toBuilder() =>
      new CreateSpotDatafeedSubscriptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSpotDatafeedSubscriptionRequest &&
        bucket == other.bucket &&
        dryRun == other.dryRun &&
        prefix == other.prefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSpotDatafeedSubscriptionRequestBuilder
    implements
        Builder<CreateSpotDatafeedSubscriptionRequest,
            CreateSpotDatafeedSubscriptionRequestBuilder> {
  _$CreateSpotDatafeedSubscriptionRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  CreateSpotDatafeedSubscriptionRequestBuilder() {
    CreateSpotDatafeedSubscriptionRequest._init(this);
  }

  CreateSpotDatafeedSubscriptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _dryRun = $v.dryRun;
      _prefix = $v.prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSpotDatafeedSubscriptionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSpotDatafeedSubscriptionRequest;
  }

  @override
  void update(
      void Function(CreateSpotDatafeedSubscriptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSpotDatafeedSubscriptionRequest build() => _build();

  _$CreateSpotDatafeedSubscriptionRequest _build() {
    final _$result = _$v ??
        new _$CreateSpotDatafeedSubscriptionRequest._(
            bucket: bucket,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CreateSpotDatafeedSubscriptionRequest', 'dryRun'),
            prefix: prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
