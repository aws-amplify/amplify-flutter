// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_spot_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestSpotInstancesResult extends RequestSpotInstancesResult {
  @override
  final _i2.BuiltList<SpotInstanceRequest>? spotInstanceRequests;

  factory _$RequestSpotInstancesResult(
          [void Function(RequestSpotInstancesResultBuilder)? updates]) =>
      (new RequestSpotInstancesResultBuilder()..update(updates))._build();

  _$RequestSpotInstancesResult._({this.spotInstanceRequests}) : super._();

  @override
  RequestSpotInstancesResult rebuild(
          void Function(RequestSpotInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestSpotInstancesResultBuilder toBuilder() =>
      new RequestSpotInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestSpotInstancesResult &&
        spotInstanceRequests == other.spotInstanceRequests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, spotInstanceRequests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestSpotInstancesResultBuilder
    implements
        Builder<RequestSpotInstancesResult, RequestSpotInstancesResultBuilder> {
  _$RequestSpotInstancesResult? _$v;

  _i2.ListBuilder<SpotInstanceRequest>? _spotInstanceRequests;
  _i2.ListBuilder<SpotInstanceRequest> get spotInstanceRequests =>
      _$this._spotInstanceRequests ??=
          new _i2.ListBuilder<SpotInstanceRequest>();
  set spotInstanceRequests(
          _i2.ListBuilder<SpotInstanceRequest>? spotInstanceRequests) =>
      _$this._spotInstanceRequests = spotInstanceRequests;

  RequestSpotInstancesResultBuilder();

  RequestSpotInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spotInstanceRequests = $v.spotInstanceRequests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestSpotInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestSpotInstancesResult;
  }

  @override
  void update(void Function(RequestSpotInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestSpotInstancesResult build() => _build();

  _$RequestSpotInstancesResult _build() {
    _$RequestSpotInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$RequestSpotInstancesResult._(
              spotInstanceRequests: _spotInstanceRequests?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotInstanceRequests';
        _spotInstanceRequests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequestSpotInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
