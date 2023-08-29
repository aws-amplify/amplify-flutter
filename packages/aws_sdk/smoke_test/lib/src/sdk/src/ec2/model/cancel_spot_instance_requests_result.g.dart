// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_spot_instance_requests_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelSpotInstanceRequestsResult
    extends CancelSpotInstanceRequestsResult {
  @override
  final _i2.BuiltList<CancelledSpotInstanceRequest>?
      cancelledSpotInstanceRequests;

  factory _$CancelSpotInstanceRequestsResult(
          [void Function(CancelSpotInstanceRequestsResultBuilder)? updates]) =>
      (new CancelSpotInstanceRequestsResultBuilder()..update(updates))._build();

  _$CancelSpotInstanceRequestsResult._({this.cancelledSpotInstanceRequests})
      : super._();

  @override
  CancelSpotInstanceRequestsResult rebuild(
          void Function(CancelSpotInstanceRequestsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelSpotInstanceRequestsResultBuilder toBuilder() =>
      new CancelSpotInstanceRequestsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelSpotInstanceRequestsResult &&
        cancelledSpotInstanceRequests == other.cancelledSpotInstanceRequests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cancelledSpotInstanceRequests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelSpotInstanceRequestsResultBuilder
    implements
        Builder<CancelSpotInstanceRequestsResult,
            CancelSpotInstanceRequestsResultBuilder> {
  _$CancelSpotInstanceRequestsResult? _$v;

  _i2.ListBuilder<CancelledSpotInstanceRequest>? _cancelledSpotInstanceRequests;
  _i2.ListBuilder<CancelledSpotInstanceRequest>
      get cancelledSpotInstanceRequests =>
          _$this._cancelledSpotInstanceRequests ??=
              new _i2.ListBuilder<CancelledSpotInstanceRequest>();
  set cancelledSpotInstanceRequests(
          _i2.ListBuilder<CancelledSpotInstanceRequest>?
              cancelledSpotInstanceRequests) =>
      _$this._cancelledSpotInstanceRequests = cancelledSpotInstanceRequests;

  CancelSpotInstanceRequestsResultBuilder();

  CancelSpotInstanceRequestsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cancelledSpotInstanceRequests =
          $v.cancelledSpotInstanceRequests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelSpotInstanceRequestsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelSpotInstanceRequestsResult;
  }

  @override
  void update(void Function(CancelSpotInstanceRequestsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelSpotInstanceRequestsResult build() => _build();

  _$CancelSpotInstanceRequestsResult _build() {
    _$CancelSpotInstanceRequestsResult _$result;
    try {
      _$result = _$v ??
          new _$CancelSpotInstanceRequestsResult._(
              cancelledSpotInstanceRequests:
                  _cancelledSpotInstanceRequests?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cancelledSpotInstanceRequests';
        _cancelledSpotInstanceRequests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelSpotInstanceRequestsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
