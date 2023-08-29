// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_types_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceTypesResult extends DescribeInstanceTypesResult {
  @override
  final _i2.BuiltList<InstanceTypeInfo>? instanceTypes;
  @override
  final String? nextToken;

  factory _$DescribeInstanceTypesResult(
          [void Function(DescribeInstanceTypesResultBuilder)? updates]) =>
      (new DescribeInstanceTypesResultBuilder()..update(updates))._build();

  _$DescribeInstanceTypesResult._({this.instanceTypes, this.nextToken})
      : super._();

  @override
  DescribeInstanceTypesResult rebuild(
          void Function(DescribeInstanceTypesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceTypesResultBuilder toBuilder() =>
      new DescribeInstanceTypesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceTypesResult &&
        instanceTypes == other.instanceTypes &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceTypes.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceTypesResultBuilder
    implements
        Builder<DescribeInstanceTypesResult,
            DescribeInstanceTypesResultBuilder> {
  _$DescribeInstanceTypesResult? _$v;

  _i2.ListBuilder<InstanceTypeInfo>? _instanceTypes;
  _i2.ListBuilder<InstanceTypeInfo> get instanceTypes =>
      _$this._instanceTypes ??= new _i2.ListBuilder<InstanceTypeInfo>();
  set instanceTypes(_i2.ListBuilder<InstanceTypeInfo>? instanceTypes) =>
      _$this._instanceTypes = instanceTypes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeInstanceTypesResultBuilder();

  DescribeInstanceTypesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceTypes = $v.instanceTypes?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceTypesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceTypesResult;
  }

  @override
  void update(void Function(DescribeInstanceTypesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceTypesResult build() => _build();

  _$DescribeInstanceTypesResult _build() {
    _$DescribeInstanceTypesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceTypesResult._(
              instanceTypes: _instanceTypes?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTypes';
        _instanceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceTypesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
