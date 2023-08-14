// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_credit_specifications_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceCreditSpecificationsResult
    extends DescribeInstanceCreditSpecificationsResult {
  @override
  final _i2.BuiltList<InstanceCreditSpecification>?
      instanceCreditSpecifications;
  @override
  final String? nextToken;

  factory _$DescribeInstanceCreditSpecificationsResult(
          [void Function(DescribeInstanceCreditSpecificationsResultBuilder)?
              updates]) =>
      (new DescribeInstanceCreditSpecificationsResultBuilder()..update(updates))
          ._build();

  _$DescribeInstanceCreditSpecificationsResult._(
      {this.instanceCreditSpecifications, this.nextToken})
      : super._();

  @override
  DescribeInstanceCreditSpecificationsResult rebuild(
          void Function(DescribeInstanceCreditSpecificationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceCreditSpecificationsResultBuilder toBuilder() =>
      new DescribeInstanceCreditSpecificationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceCreditSpecificationsResult &&
        instanceCreditSpecifications == other.instanceCreditSpecifications &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceCreditSpecifications.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceCreditSpecificationsResultBuilder
    implements
        Builder<DescribeInstanceCreditSpecificationsResult,
            DescribeInstanceCreditSpecificationsResultBuilder> {
  _$DescribeInstanceCreditSpecificationsResult? _$v;

  _i2.ListBuilder<InstanceCreditSpecification>? _instanceCreditSpecifications;
  _i2.ListBuilder<InstanceCreditSpecification>
      get instanceCreditSpecifications =>
          _$this._instanceCreditSpecifications ??=
              new _i2.ListBuilder<InstanceCreditSpecification>();
  set instanceCreditSpecifications(
          _i2.ListBuilder<InstanceCreditSpecification>?
              instanceCreditSpecifications) =>
      _$this._instanceCreditSpecifications = instanceCreditSpecifications;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeInstanceCreditSpecificationsResultBuilder();

  DescribeInstanceCreditSpecificationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceCreditSpecifications =
          $v.instanceCreditSpecifications?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceCreditSpecificationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceCreditSpecificationsResult;
  }

  @override
  void update(
      void Function(DescribeInstanceCreditSpecificationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceCreditSpecificationsResult build() => _build();

  _$DescribeInstanceCreditSpecificationsResult _build() {
    _$DescribeInstanceCreditSpecificationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceCreditSpecificationsResult._(
              instanceCreditSpecifications:
                  _instanceCreditSpecifications?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceCreditSpecifications';
        _instanceCreditSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceCreditSpecificationsResult',
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
