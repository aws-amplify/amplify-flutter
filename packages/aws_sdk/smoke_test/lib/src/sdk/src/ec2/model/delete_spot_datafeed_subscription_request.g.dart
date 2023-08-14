// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_spot_datafeed_subscription_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteSpotDatafeedSubscriptionRequest
    extends DeleteSpotDatafeedSubscriptionRequest {
  @override
  final bool dryRun;

  factory _$DeleteSpotDatafeedSubscriptionRequest(
          [void Function(DeleteSpotDatafeedSubscriptionRequestBuilder)?
              updates]) =>
      (new DeleteSpotDatafeedSubscriptionRequestBuilder()..update(updates))
          ._build();

  _$DeleteSpotDatafeedSubscriptionRequest._({required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteSpotDatafeedSubscriptionRequest', 'dryRun');
  }

  @override
  DeleteSpotDatafeedSubscriptionRequest rebuild(
          void Function(DeleteSpotDatafeedSubscriptionRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteSpotDatafeedSubscriptionRequestBuilder toBuilder() =>
      new DeleteSpotDatafeedSubscriptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteSpotDatafeedSubscriptionRequest &&
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

class DeleteSpotDatafeedSubscriptionRequestBuilder
    implements
        Builder<DeleteSpotDatafeedSubscriptionRequest,
            DeleteSpotDatafeedSubscriptionRequestBuilder> {
  _$DeleteSpotDatafeedSubscriptionRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteSpotDatafeedSubscriptionRequestBuilder() {
    DeleteSpotDatafeedSubscriptionRequest._init(this);
  }

  DeleteSpotDatafeedSubscriptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteSpotDatafeedSubscriptionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteSpotDatafeedSubscriptionRequest;
  }

  @override
  void update(
      void Function(DeleteSpotDatafeedSubscriptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteSpotDatafeedSubscriptionRequest build() => _build();

  _$DeleteSpotDatafeedSubscriptionRequest _build() {
    final _$result = _$v ??
        new _$DeleteSpotDatafeedSubscriptionRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteSpotDatafeedSubscriptionRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
