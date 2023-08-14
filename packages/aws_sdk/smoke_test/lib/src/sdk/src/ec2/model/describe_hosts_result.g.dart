// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_hosts_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeHostsResult extends DescribeHostsResult {
  @override
  final _i2.BuiltList<Host>? hosts;
  @override
  final String? nextToken;

  factory _$DescribeHostsResult(
          [void Function(DescribeHostsResultBuilder)? updates]) =>
      (new DescribeHostsResultBuilder()..update(updates))._build();

  _$DescribeHostsResult._({this.hosts, this.nextToken}) : super._();

  @override
  DescribeHostsResult rebuild(
          void Function(DescribeHostsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeHostsResultBuilder toBuilder() =>
      new DescribeHostsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeHostsResult &&
        hosts == other.hosts &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hosts.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeHostsResultBuilder
    implements Builder<DescribeHostsResult, DescribeHostsResultBuilder> {
  _$DescribeHostsResult? _$v;

  _i2.ListBuilder<Host>? _hosts;
  _i2.ListBuilder<Host> get hosts =>
      _$this._hosts ??= new _i2.ListBuilder<Host>();
  set hosts(_i2.ListBuilder<Host>? hosts) => _$this._hosts = hosts;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeHostsResultBuilder();

  DescribeHostsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hosts = $v.hosts?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeHostsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeHostsResult;
  }

  @override
  void update(void Function(DescribeHostsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeHostsResult build() => _build();

  _$DescribeHostsResult _build() {
    _$DescribeHostsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeHostsResult._(
              hosts: _hosts?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hosts';
        _hosts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeHostsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
