// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_type_offerings_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceTypeOfferingsResult
    extends DescribeInstanceTypeOfferingsResult {
  @override
  final _i2.BuiltList<InstanceTypeOffering>? instanceTypeOfferings;
  @override
  final String? nextToken;

  factory _$DescribeInstanceTypeOfferingsResult(
          [void Function(DescribeInstanceTypeOfferingsResultBuilder)?
              updates]) =>
      (new DescribeInstanceTypeOfferingsResultBuilder()..update(updates))
          ._build();

  _$DescribeInstanceTypeOfferingsResult._(
      {this.instanceTypeOfferings, this.nextToken})
      : super._();

  @override
  DescribeInstanceTypeOfferingsResult rebuild(
          void Function(DescribeInstanceTypeOfferingsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceTypeOfferingsResultBuilder toBuilder() =>
      new DescribeInstanceTypeOfferingsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceTypeOfferingsResult &&
        instanceTypeOfferings == other.instanceTypeOfferings &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceTypeOfferings.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceTypeOfferingsResultBuilder
    implements
        Builder<DescribeInstanceTypeOfferingsResult,
            DescribeInstanceTypeOfferingsResultBuilder> {
  _$DescribeInstanceTypeOfferingsResult? _$v;

  _i2.ListBuilder<InstanceTypeOffering>? _instanceTypeOfferings;
  _i2.ListBuilder<InstanceTypeOffering> get instanceTypeOfferings =>
      _$this._instanceTypeOfferings ??=
          new _i2.ListBuilder<InstanceTypeOffering>();
  set instanceTypeOfferings(
          _i2.ListBuilder<InstanceTypeOffering>? instanceTypeOfferings) =>
      _$this._instanceTypeOfferings = instanceTypeOfferings;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeInstanceTypeOfferingsResultBuilder();

  DescribeInstanceTypeOfferingsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceTypeOfferings = $v.instanceTypeOfferings?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceTypeOfferingsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceTypeOfferingsResult;
  }

  @override
  void update(
      void Function(DescribeInstanceTypeOfferingsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceTypeOfferingsResult build() => _build();

  _$DescribeInstanceTypeOfferingsResult _build() {
    _$DescribeInstanceTypeOfferingsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceTypeOfferingsResult._(
              instanceTypeOfferings: _instanceTypeOfferings?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTypeOfferings';
        _instanceTypeOfferings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceTypeOfferingsResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
