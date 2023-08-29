// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_spot_fleet_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestSpotFleetResponse extends RequestSpotFleetResponse {
  @override
  final String? spotFleetRequestId;

  factory _$RequestSpotFleetResponse(
          [void Function(RequestSpotFleetResponseBuilder)? updates]) =>
      (new RequestSpotFleetResponseBuilder()..update(updates))._build();

  _$RequestSpotFleetResponse._({this.spotFleetRequestId}) : super._();

  @override
  RequestSpotFleetResponse rebuild(
          void Function(RequestSpotFleetResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestSpotFleetResponseBuilder toBuilder() =>
      new RequestSpotFleetResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestSpotFleetResponse &&
        spotFleetRequestId == other.spotFleetRequestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, spotFleetRequestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestSpotFleetResponseBuilder
    implements
        Builder<RequestSpotFleetResponse, RequestSpotFleetResponseBuilder> {
  _$RequestSpotFleetResponse? _$v;

  String? _spotFleetRequestId;
  String? get spotFleetRequestId => _$this._spotFleetRequestId;
  set spotFleetRequestId(String? spotFleetRequestId) =>
      _$this._spotFleetRequestId = spotFleetRequestId;

  RequestSpotFleetResponseBuilder();

  RequestSpotFleetResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spotFleetRequestId = $v.spotFleetRequestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestSpotFleetResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestSpotFleetResponse;
  }

  @override
  void update(void Function(RequestSpotFleetResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestSpotFleetResponse build() => _build();

  _$RequestSpotFleetResponse _build() {
    final _$result = _$v ??
        new _$RequestSpotFleetResponse._(
            spotFleetRequestId: spotFleetRequestId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
