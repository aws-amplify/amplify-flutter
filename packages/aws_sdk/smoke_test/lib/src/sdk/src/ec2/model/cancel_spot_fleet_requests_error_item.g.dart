// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_spot_fleet_requests_error_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelSpotFleetRequestsErrorItem
    extends CancelSpotFleetRequestsErrorItem {
  @override
  final CancelSpotFleetRequestsError? error;
  @override
  final String? spotFleetRequestId;

  factory _$CancelSpotFleetRequestsErrorItem(
          [void Function(CancelSpotFleetRequestsErrorItemBuilder)? updates]) =>
      (new CancelSpotFleetRequestsErrorItemBuilder()..update(updates))._build();

  _$CancelSpotFleetRequestsErrorItem._({this.error, this.spotFleetRequestId})
      : super._();

  @override
  CancelSpotFleetRequestsErrorItem rebuild(
          void Function(CancelSpotFleetRequestsErrorItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelSpotFleetRequestsErrorItemBuilder toBuilder() =>
      new CancelSpotFleetRequestsErrorItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelSpotFleetRequestsErrorItem &&
        error == other.error &&
        spotFleetRequestId == other.spotFleetRequestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelSpotFleetRequestsErrorItemBuilder
    implements
        Builder<CancelSpotFleetRequestsErrorItem,
            CancelSpotFleetRequestsErrorItemBuilder> {
  _$CancelSpotFleetRequestsErrorItem? _$v;

  CancelSpotFleetRequestsErrorBuilder? _error;
  CancelSpotFleetRequestsErrorBuilder get error =>
      _$this._error ??= new CancelSpotFleetRequestsErrorBuilder();
  set error(CancelSpotFleetRequestsErrorBuilder? error) =>
      _$this._error = error;

  String? _spotFleetRequestId;
  String? get spotFleetRequestId => _$this._spotFleetRequestId;
  set spotFleetRequestId(String? spotFleetRequestId) =>
      _$this._spotFleetRequestId = spotFleetRequestId;

  CancelSpotFleetRequestsErrorItemBuilder();

  CancelSpotFleetRequestsErrorItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error?.toBuilder();
      _spotFleetRequestId = $v.spotFleetRequestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelSpotFleetRequestsErrorItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelSpotFleetRequestsErrorItem;
  }

  @override
  void update(void Function(CancelSpotFleetRequestsErrorItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelSpotFleetRequestsErrorItem build() => _build();

  _$CancelSpotFleetRequestsErrorItem _build() {
    _$CancelSpotFleetRequestsErrorItem _$result;
    try {
      _$result = _$v ??
          new _$CancelSpotFleetRequestsErrorItem._(
              error: _error?.build(), spotFleetRequestId: spotFleetRequestId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelSpotFleetRequestsErrorItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
