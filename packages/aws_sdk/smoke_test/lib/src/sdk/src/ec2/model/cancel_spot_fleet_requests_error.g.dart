// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_spot_fleet_requests_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelSpotFleetRequestsError extends CancelSpotFleetRequestsError {
  @override
  final CancelBatchErrorCode? code;
  @override
  final String? message;

  factory _$CancelSpotFleetRequestsError(
          [void Function(CancelSpotFleetRequestsErrorBuilder)? updates]) =>
      (new CancelSpotFleetRequestsErrorBuilder()..update(updates))._build();

  _$CancelSpotFleetRequestsError._({this.code, this.message}) : super._();

  @override
  CancelSpotFleetRequestsError rebuild(
          void Function(CancelSpotFleetRequestsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelSpotFleetRequestsErrorBuilder toBuilder() =>
      new CancelSpotFleetRequestsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelSpotFleetRequestsError &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelSpotFleetRequestsErrorBuilder
    implements
        Builder<CancelSpotFleetRequestsError,
            CancelSpotFleetRequestsErrorBuilder> {
  _$CancelSpotFleetRequestsError? _$v;

  CancelBatchErrorCode? _code;
  CancelBatchErrorCode? get code => _$this._code;
  set code(CancelBatchErrorCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CancelSpotFleetRequestsErrorBuilder();

  CancelSpotFleetRequestsErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelSpotFleetRequestsError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelSpotFleetRequestsError;
  }

  @override
  void update(void Function(CancelSpotFleetRequestsErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelSpotFleetRequestsError build() => _build();

  _$CancelSpotFleetRequestsError _build() {
    final _$result = _$v ??
        new _$CancelSpotFleetRequestsError._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
