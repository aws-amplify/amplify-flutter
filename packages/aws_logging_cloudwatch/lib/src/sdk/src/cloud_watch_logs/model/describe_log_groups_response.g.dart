// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_log_groups_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLogGroupsResponse extends DescribeLogGroupsResponse {
  @override
  final _i3.BuiltList<_i2.LogGroup>? logGroups;
  @override
  final String? nextToken;

  factory _$DescribeLogGroupsResponse(
          [void Function(DescribeLogGroupsResponseBuilder)? updates]) =>
      (new DescribeLogGroupsResponseBuilder()..update(updates))._build();

  _$DescribeLogGroupsResponse._({this.logGroups, this.nextToken}) : super._();

  @override
  DescribeLogGroupsResponse rebuild(
          void Function(DescribeLogGroupsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLogGroupsResponseBuilder toBuilder() =>
      new DescribeLogGroupsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLogGroupsResponse &&
        logGroups == other.logGroups &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logGroups.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLogGroupsResponseBuilder
    implements
        Builder<DescribeLogGroupsResponse, DescribeLogGroupsResponseBuilder> {
  _$DescribeLogGroupsResponse? _$v;

  _i3.ListBuilder<_i2.LogGroup>? _logGroups;
  _i3.ListBuilder<_i2.LogGroup> get logGroups =>
      _$this._logGroups ??= new _i3.ListBuilder<_i2.LogGroup>();
  set logGroups(_i3.ListBuilder<_i2.LogGroup>? logGroups) =>
      _$this._logGroups = logGroups;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeLogGroupsResponseBuilder() {
    DescribeLogGroupsResponse._init(this);
  }

  DescribeLogGroupsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logGroups = $v.logGroups?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLogGroupsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLogGroupsResponse;
  }

  @override
  void update(void Function(DescribeLogGroupsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLogGroupsResponse build() => _build();

  _$DescribeLogGroupsResponse _build() {
    _$DescribeLogGroupsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeLogGroupsResponse._(
              logGroups: _logGroups?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logGroups';
        _logGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLogGroupsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
