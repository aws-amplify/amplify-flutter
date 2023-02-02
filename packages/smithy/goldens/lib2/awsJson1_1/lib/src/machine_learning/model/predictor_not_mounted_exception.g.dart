// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v2.machine_learning.model.predictor_not_mounted_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PredictorNotMountedException extends PredictorNotMountedException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$PredictorNotMountedException(
          [void Function(PredictorNotMountedExceptionBuilder)? updates]) =>
      (new PredictorNotMountedExceptionBuilder()..update(updates))._build();

  _$PredictorNotMountedException._({this.message, this.headers}) : super._();

  @override
  PredictorNotMountedException rebuild(
          void Function(PredictorNotMountedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PredictorNotMountedExceptionBuilder toBuilder() =>
      new PredictorNotMountedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PredictorNotMountedException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PredictorNotMountedExceptionBuilder
    implements
        Builder<PredictorNotMountedException,
            PredictorNotMountedExceptionBuilder> {
  _$PredictorNotMountedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  PredictorNotMountedExceptionBuilder() {
    PredictorNotMountedException._init(this);
  }

  PredictorNotMountedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PredictorNotMountedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PredictorNotMountedException;
  }

  @override
  void update(void Function(PredictorNotMountedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PredictorNotMountedException build() => _build();

  _$PredictorNotMountedException _build() {
    final _$result = _$v ??
        new _$PredictorNotMountedException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
