// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelled_spot_instance_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelledSpotInstanceRequest extends CancelledSpotInstanceRequest {
  @override
  final String? spotInstanceRequestId;
  @override
  final CancelSpotInstanceRequestState? state;

  factory _$CancelledSpotInstanceRequest(
          [void Function(CancelledSpotInstanceRequestBuilder)? updates]) =>
      (new CancelledSpotInstanceRequestBuilder()..update(updates))._build();

  _$CancelledSpotInstanceRequest._({this.spotInstanceRequestId, this.state})
      : super._();

  @override
  CancelledSpotInstanceRequest rebuild(
          void Function(CancelledSpotInstanceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelledSpotInstanceRequestBuilder toBuilder() =>
      new CancelledSpotInstanceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelledSpotInstanceRequest &&
        spotInstanceRequestId == other.spotInstanceRequestId &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, spotInstanceRequestId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelledSpotInstanceRequestBuilder
    implements
        Builder<CancelledSpotInstanceRequest,
            CancelledSpotInstanceRequestBuilder> {
  _$CancelledSpotInstanceRequest? _$v;

  String? _spotInstanceRequestId;
  String? get spotInstanceRequestId => _$this._spotInstanceRequestId;
  set spotInstanceRequestId(String? spotInstanceRequestId) =>
      _$this._spotInstanceRequestId = spotInstanceRequestId;

  CancelSpotInstanceRequestState? _state;
  CancelSpotInstanceRequestState? get state => _$this._state;
  set state(CancelSpotInstanceRequestState? state) => _$this._state = state;

  CancelledSpotInstanceRequestBuilder();

  CancelledSpotInstanceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spotInstanceRequestId = $v.spotInstanceRequestId;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelledSpotInstanceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelledSpotInstanceRequest;
  }

  @override
  void update(void Function(CancelledSpotInstanceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelledSpotInstanceRequest build() => _build();

  _$CancelledSpotInstanceRequest _build() {
    final _$result = _$v ??
        new _$CancelledSpotInstanceRequest._(
            spotInstanceRequestId: spotInstanceRequestId, state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
