// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.not_found_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotFoundException extends NotFoundException {
  @override
  final String? message;
  @override
  final String? requestId;
  @override
  final Map<String, String>? headers;

  factory _$NotFoundException(
          [void Function(NotFoundExceptionBuilder)? updates]) =>
      (new NotFoundExceptionBuilder()..update(updates))._build();

  _$NotFoundException._({this.message, this.requestId, this.headers})
      : super._();

  @override
  NotFoundException rebuild(void Function(NotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotFoundExceptionBuilder toBuilder() =>
      new NotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotFoundException &&
        message == other.message &&
        requestId == other.requestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NotFoundExceptionBuilder
    implements Builder<NotFoundException, NotFoundExceptionBuilder> {
  _$NotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NotFoundExceptionBuilder() {
    NotFoundException._init(this);
  }

  NotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _requestId = $v.requestId;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotFoundException;
  }

  @override
  void update(void Function(NotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotFoundException build() => _build();

  _$NotFoundException _build() {
    final _$result = _$v ??
        new _$NotFoundException._(
            message: message, requestId: requestId, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
