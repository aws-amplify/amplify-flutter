// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_spot_fleet_requests_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelSpotFleetRequestsResponse
    extends CancelSpotFleetRequestsResponse {
  @override
  final _i2.BuiltList<CancelSpotFleetRequestsSuccessItem>?
      successfulFleetRequests;
  @override
  final _i2.BuiltList<CancelSpotFleetRequestsErrorItem>?
      unsuccessfulFleetRequests;

  factory _$CancelSpotFleetRequestsResponse(
          [void Function(CancelSpotFleetRequestsResponseBuilder)? updates]) =>
      (new CancelSpotFleetRequestsResponseBuilder()..update(updates))._build();

  _$CancelSpotFleetRequestsResponse._(
      {this.successfulFleetRequests, this.unsuccessfulFleetRequests})
      : super._();

  @override
  CancelSpotFleetRequestsResponse rebuild(
          void Function(CancelSpotFleetRequestsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelSpotFleetRequestsResponseBuilder toBuilder() =>
      new CancelSpotFleetRequestsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelSpotFleetRequestsResponse &&
        successfulFleetRequests == other.successfulFleetRequests &&
        unsuccessfulFleetRequests == other.unsuccessfulFleetRequests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successfulFleetRequests.hashCode);
    _$hash = $jc(_$hash, unsuccessfulFleetRequests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelSpotFleetRequestsResponseBuilder
    implements
        Builder<CancelSpotFleetRequestsResponse,
            CancelSpotFleetRequestsResponseBuilder> {
  _$CancelSpotFleetRequestsResponse? _$v;

  _i2.ListBuilder<CancelSpotFleetRequestsSuccessItem>? _successfulFleetRequests;
  _i2.ListBuilder<CancelSpotFleetRequestsSuccessItem>
      get successfulFleetRequests => _$this._successfulFleetRequests ??=
          new _i2.ListBuilder<CancelSpotFleetRequestsSuccessItem>();
  set successfulFleetRequests(
          _i2.ListBuilder<CancelSpotFleetRequestsSuccessItem>?
              successfulFleetRequests) =>
      _$this._successfulFleetRequests = successfulFleetRequests;

  _i2.ListBuilder<CancelSpotFleetRequestsErrorItem>? _unsuccessfulFleetRequests;
  _i2.ListBuilder<CancelSpotFleetRequestsErrorItem>
      get unsuccessfulFleetRequests => _$this._unsuccessfulFleetRequests ??=
          new _i2.ListBuilder<CancelSpotFleetRequestsErrorItem>();
  set unsuccessfulFleetRequests(
          _i2.ListBuilder<CancelSpotFleetRequestsErrorItem>?
              unsuccessfulFleetRequests) =>
      _$this._unsuccessfulFleetRequests = unsuccessfulFleetRequests;

  CancelSpotFleetRequestsResponseBuilder();

  CancelSpotFleetRequestsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successfulFleetRequests = $v.successfulFleetRequests?.toBuilder();
      _unsuccessfulFleetRequests = $v.unsuccessfulFleetRequests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelSpotFleetRequestsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelSpotFleetRequestsResponse;
  }

  @override
  void update(void Function(CancelSpotFleetRequestsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelSpotFleetRequestsResponse build() => _build();

  _$CancelSpotFleetRequestsResponse _build() {
    _$CancelSpotFleetRequestsResponse _$result;
    try {
      _$result = _$v ??
          new _$CancelSpotFleetRequestsResponse._(
              successfulFleetRequests: _successfulFleetRequests?.build(),
              unsuccessfulFleetRequests: _unsuccessfulFleetRequests?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successfulFleetRequests';
        _successfulFleetRequests?.build();
        _$failedField = 'unsuccessfulFleetRequests';
        _unsuccessfulFleetRequests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelSpotFleetRequestsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
