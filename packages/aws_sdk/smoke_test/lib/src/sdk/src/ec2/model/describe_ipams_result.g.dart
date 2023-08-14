// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipams_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpamsResult extends DescribeIpamsResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<Ipam>? ipams;

  factory _$DescribeIpamsResult(
          [void Function(DescribeIpamsResultBuilder)? updates]) =>
      (new DescribeIpamsResultBuilder()..update(updates))._build();

  _$DescribeIpamsResult._({this.nextToken, this.ipams}) : super._();

  @override
  DescribeIpamsResult rebuild(
          void Function(DescribeIpamsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpamsResultBuilder toBuilder() =>
      new DescribeIpamsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpamsResult &&
        nextToken == other.nextToken &&
        ipams == other.ipams;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, ipams.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpamsResultBuilder
    implements Builder<DescribeIpamsResult, DescribeIpamsResultBuilder> {
  _$DescribeIpamsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<Ipam>? _ipams;
  _i2.ListBuilder<Ipam> get ipams =>
      _$this._ipams ??= new _i2.ListBuilder<Ipam>();
  set ipams(_i2.ListBuilder<Ipam>? ipams) => _$this._ipams = ipams;

  DescribeIpamsResultBuilder();

  DescribeIpamsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _ipams = $v.ipams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpamsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpamsResult;
  }

  @override
  void update(void Function(DescribeIpamsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpamsResult build() => _build();

  _$DescribeIpamsResult _build() {
    _$DescribeIpamsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpamsResult._(
              nextToken: nextToken, ipams: _ipams?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipams';
        _ipams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpamsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
