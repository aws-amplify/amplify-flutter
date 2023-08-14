// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_verified_access_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVerifiedAccessInstancesResult
    extends DescribeVerifiedAccessInstancesResult {
  @override
  final _i2.BuiltList<VerifiedAccessInstance>? verifiedAccessInstances;
  @override
  final String? nextToken;

  factory _$DescribeVerifiedAccessInstancesResult(
          [void Function(DescribeVerifiedAccessInstancesResultBuilder)?
              updates]) =>
      (new DescribeVerifiedAccessInstancesResultBuilder()..update(updates))
          ._build();

  _$DescribeVerifiedAccessInstancesResult._(
      {this.verifiedAccessInstances, this.nextToken})
      : super._();

  @override
  DescribeVerifiedAccessInstancesResult rebuild(
          void Function(DescribeVerifiedAccessInstancesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVerifiedAccessInstancesResultBuilder toBuilder() =>
      new DescribeVerifiedAccessInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVerifiedAccessInstancesResult &&
        verifiedAccessInstances == other.verifiedAccessInstances &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstances.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVerifiedAccessInstancesResultBuilder
    implements
        Builder<DescribeVerifiedAccessInstancesResult,
            DescribeVerifiedAccessInstancesResultBuilder> {
  _$DescribeVerifiedAccessInstancesResult? _$v;

  _i2.ListBuilder<VerifiedAccessInstance>? _verifiedAccessInstances;
  _i2.ListBuilder<VerifiedAccessInstance> get verifiedAccessInstances =>
      _$this._verifiedAccessInstances ??=
          new _i2.ListBuilder<VerifiedAccessInstance>();
  set verifiedAccessInstances(
          _i2.ListBuilder<VerifiedAccessInstance>? verifiedAccessInstances) =>
      _$this._verifiedAccessInstances = verifiedAccessInstances;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVerifiedAccessInstancesResultBuilder();

  DescribeVerifiedAccessInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstances = $v.verifiedAccessInstances?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVerifiedAccessInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVerifiedAccessInstancesResult;
  }

  @override
  void update(
      void Function(DescribeVerifiedAccessInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVerifiedAccessInstancesResult build() => _build();

  _$DescribeVerifiedAccessInstancesResult _build() {
    _$DescribeVerifiedAccessInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVerifiedAccessInstancesResult._(
              verifiedAccessInstances: _verifiedAccessInstances?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessInstances';
        _verifiedAccessInstances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVerifiedAccessInstancesResult',
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
