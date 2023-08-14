// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_subnets_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSubnetsResult extends DescribeSubnetsResult {
  @override
  final _i2.BuiltList<Subnet>? subnets;
  @override
  final String? nextToken;

  factory _$DescribeSubnetsResult(
          [void Function(DescribeSubnetsResultBuilder)? updates]) =>
      (new DescribeSubnetsResultBuilder()..update(updates))._build();

  _$DescribeSubnetsResult._({this.subnets, this.nextToken}) : super._();

  @override
  DescribeSubnetsResult rebuild(
          void Function(DescribeSubnetsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSubnetsResultBuilder toBuilder() =>
      new DescribeSubnetsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSubnetsResult &&
        subnets == other.subnets &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnets.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSubnetsResultBuilder
    implements Builder<DescribeSubnetsResult, DescribeSubnetsResultBuilder> {
  _$DescribeSubnetsResult? _$v;

  _i2.ListBuilder<Subnet>? _subnets;
  _i2.ListBuilder<Subnet> get subnets =>
      _$this._subnets ??= new _i2.ListBuilder<Subnet>();
  set subnets(_i2.ListBuilder<Subnet>? subnets) => _$this._subnets = subnets;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeSubnetsResultBuilder();

  DescribeSubnetsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnets = $v.subnets?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSubnetsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSubnetsResult;
  }

  @override
  void update(void Function(DescribeSubnetsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSubnetsResult build() => _build();

  _$DescribeSubnetsResult _build() {
    _$DescribeSubnetsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSubnetsResult._(
              subnets: _subnets?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnets';
        _subnets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSubnetsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
