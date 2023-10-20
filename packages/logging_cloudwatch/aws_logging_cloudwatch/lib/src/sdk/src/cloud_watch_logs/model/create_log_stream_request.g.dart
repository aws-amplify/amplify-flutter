// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_log_stream_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLogStreamRequest extends CreateLogStreamRequest {
  @override
  final String logGroupName;
  @override
  final String logStreamName;

  factory _$CreateLogStreamRequest(
          [void Function(CreateLogStreamRequestBuilder)? updates]) =>
      (new CreateLogStreamRequestBuilder()..update(updates))._build();

  _$CreateLogStreamRequest._(
      {required this.logGroupName, required this.logStreamName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        logGroupName, r'CreateLogStreamRequest', 'logGroupName');
    BuiltValueNullFieldError.checkNotNull(
        logStreamName, r'CreateLogStreamRequest', 'logStreamName');
  }

  @override
  CreateLogStreamRequest rebuild(
          void Function(CreateLogStreamRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLogStreamRequestBuilder toBuilder() =>
      new CreateLogStreamRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLogStreamRequest &&
        logGroupName == other.logGroupName &&
        logStreamName == other.logStreamName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logGroupName.hashCode);
    _$hash = $jc(_$hash, logStreamName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLogStreamRequestBuilder
    implements Builder<CreateLogStreamRequest, CreateLogStreamRequestBuilder> {
  _$CreateLogStreamRequest? _$v;

  String? _logGroupName;
  String? get logGroupName => _$this._logGroupName;
  set logGroupName(String? logGroupName) => _$this._logGroupName = logGroupName;

  String? _logStreamName;
  String? get logStreamName => _$this._logStreamName;
  set logStreamName(String? logStreamName) =>
      _$this._logStreamName = logStreamName;

  CreateLogStreamRequestBuilder() {
    CreateLogStreamRequest._init(this);
  }

  CreateLogStreamRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logGroupName = $v.logGroupName;
      _logStreamName = $v.logStreamName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLogStreamRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLogStreamRequest;
  }

  @override
  void update(void Function(CreateLogStreamRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLogStreamRequest build() => _build();

  _$CreateLogStreamRequest _build() {
    final _$result = _$v ??
        new _$CreateLogStreamRequest._(
            logGroupName: BuiltValueNullFieldError.checkNotNull(
                logGroupName, r'CreateLogStreamRequest', 'logGroupName'),
            logStreamName: BuiltValueNullFieldError.checkNotNull(
                logStreamName, r'CreateLogStreamRequest', 'logStreamName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
