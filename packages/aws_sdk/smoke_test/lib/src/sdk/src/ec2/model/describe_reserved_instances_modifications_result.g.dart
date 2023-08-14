// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_reserved_instances_modifications_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeReservedInstancesModificationsResult
    extends DescribeReservedInstancesModificationsResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<ReservedInstancesModification>?
      reservedInstancesModifications;

  factory _$DescribeReservedInstancesModificationsResult(
          [void Function(DescribeReservedInstancesModificationsResultBuilder)?
              updates]) =>
      (new DescribeReservedInstancesModificationsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeReservedInstancesModificationsResult._(
      {this.nextToken, this.reservedInstancesModifications})
      : super._();

  @override
  DescribeReservedInstancesModificationsResult rebuild(
          void Function(DescribeReservedInstancesModificationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeReservedInstancesModificationsResultBuilder toBuilder() =>
      new DescribeReservedInstancesModificationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeReservedInstancesModificationsResult &&
        nextToken == other.nextToken &&
        reservedInstancesModifications == other.reservedInstancesModifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, reservedInstancesModifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeReservedInstancesModificationsResultBuilder
    implements
        Builder<DescribeReservedInstancesModificationsResult,
            DescribeReservedInstancesModificationsResultBuilder> {
  _$DescribeReservedInstancesModificationsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<ReservedInstancesModification>?
      _reservedInstancesModifications;
  _i2.ListBuilder<ReservedInstancesModification>
      get reservedInstancesModifications =>
          _$this._reservedInstancesModifications ??=
              new _i2.ListBuilder<ReservedInstancesModification>();
  set reservedInstancesModifications(
          _i2.ListBuilder<ReservedInstancesModification>?
              reservedInstancesModifications) =>
      _$this._reservedInstancesModifications = reservedInstancesModifications;

  DescribeReservedInstancesModificationsResultBuilder();

  DescribeReservedInstancesModificationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _reservedInstancesModifications =
          $v.reservedInstancesModifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeReservedInstancesModificationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeReservedInstancesModificationsResult;
  }

  @override
  void update(
      void Function(DescribeReservedInstancesModificationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeReservedInstancesModificationsResult build() => _build();

  _$DescribeReservedInstancesModificationsResult _build() {
    _$DescribeReservedInstancesModificationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeReservedInstancesModificationsResult._(
              nextToken: nextToken,
              reservedInstancesModifications:
                  _reservedInstancesModifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedInstancesModifications';
        _reservedInstancesModifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeReservedInstancesModificationsResult',
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
