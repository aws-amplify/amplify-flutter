// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_log_streams_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLogStreamsResponse extends DescribeLogStreamsResponse {
  @override
  final _i3.BuiltList<_i2.LogStream>? logStreams;
  @override
  final String? nextToken;

  factory _$DescribeLogStreamsResponse(
          [void Function(DescribeLogStreamsResponseBuilder)? updates]) =>
      (new DescribeLogStreamsResponseBuilder()..update(updates))._build();

  _$DescribeLogStreamsResponse._({this.logStreams, this.nextToken}) : super._();

  @override
  DescribeLogStreamsResponse rebuild(
          void Function(DescribeLogStreamsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLogStreamsResponseBuilder toBuilder() =>
      new DescribeLogStreamsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLogStreamsResponse &&
        logStreams == other.logStreams &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logStreams.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLogStreamsResponseBuilder
    implements
        Builder<DescribeLogStreamsResponse, DescribeLogStreamsResponseBuilder> {
  _$DescribeLogStreamsResponse? _$v;

  _i3.ListBuilder<_i2.LogStream>? _logStreams;
  _i3.ListBuilder<_i2.LogStream> get logStreams =>
      _$this._logStreams ??= new _i3.ListBuilder<_i2.LogStream>();
  set logStreams(_i3.ListBuilder<_i2.LogStream>? logStreams) =>
      _$this._logStreams = logStreams;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeLogStreamsResponseBuilder() {
    DescribeLogStreamsResponse._init(this);
  }

  DescribeLogStreamsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logStreams = $v.logStreams?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLogStreamsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLogStreamsResponse;
  }

  @override
  void update(void Function(DescribeLogStreamsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLogStreamsResponse build() => _build();

  _$DescribeLogStreamsResponse _build() {
    _$DescribeLogStreamsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeLogStreamsResponse._(
              logStreams: _logStreams?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logStreams';
        _logStreams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLogStreamsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
