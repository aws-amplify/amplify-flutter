// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.report_generation_limit_exceeded_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportGenerationLimitExceededException
    extends ReportGenerationLimitExceededException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$ReportGenerationLimitExceededException(
          [void Function(ReportGenerationLimitExceededExceptionBuilder)?
              updates]) =>
      (new ReportGenerationLimitExceededExceptionBuilder()..update(updates))
          ._build();

  _$ReportGenerationLimitExceededException._({this.message, this.headers})
      : super._();

  @override
  ReportGenerationLimitExceededException rebuild(
          void Function(ReportGenerationLimitExceededExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportGenerationLimitExceededExceptionBuilder toBuilder() =>
      new ReportGenerationLimitExceededExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportGenerationLimitExceededException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReportGenerationLimitExceededExceptionBuilder
    implements
        Builder<ReportGenerationLimitExceededException,
            ReportGenerationLimitExceededExceptionBuilder> {
  _$ReportGenerationLimitExceededException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ReportGenerationLimitExceededExceptionBuilder() {
    ReportGenerationLimitExceededException._init(this);
  }

  ReportGenerationLimitExceededExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportGenerationLimitExceededException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportGenerationLimitExceededException;
  }

  @override
  void update(
      void Function(ReportGenerationLimitExceededExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportGenerationLimitExceededException build() => _build();

  _$ReportGenerationLimitExceededException _build() {
    final _$result = _$v ??
        new _$ReportGenerationLimitExceededException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
