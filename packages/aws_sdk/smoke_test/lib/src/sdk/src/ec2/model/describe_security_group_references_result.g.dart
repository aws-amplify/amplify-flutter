// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_security_group_references_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSecurityGroupReferencesResult
    extends DescribeSecurityGroupReferencesResult {
  @override
  final _i2.BuiltList<SecurityGroupReference>? securityGroupReferenceSet;

  factory _$DescribeSecurityGroupReferencesResult(
          [void Function(DescribeSecurityGroupReferencesResultBuilder)?
              updates]) =>
      (new DescribeSecurityGroupReferencesResultBuilder()..update(updates))
          ._build();

  _$DescribeSecurityGroupReferencesResult._({this.securityGroupReferenceSet})
      : super._();

  @override
  DescribeSecurityGroupReferencesResult rebuild(
          void Function(DescribeSecurityGroupReferencesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSecurityGroupReferencesResultBuilder toBuilder() =>
      new DescribeSecurityGroupReferencesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSecurityGroupReferencesResult &&
        securityGroupReferenceSet == other.securityGroupReferenceSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, securityGroupReferenceSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSecurityGroupReferencesResultBuilder
    implements
        Builder<DescribeSecurityGroupReferencesResult,
            DescribeSecurityGroupReferencesResultBuilder> {
  _$DescribeSecurityGroupReferencesResult? _$v;

  _i2.ListBuilder<SecurityGroupReference>? _securityGroupReferenceSet;
  _i2.ListBuilder<SecurityGroupReference> get securityGroupReferenceSet =>
      _$this._securityGroupReferenceSet ??=
          new _i2.ListBuilder<SecurityGroupReference>();
  set securityGroupReferenceSet(
          _i2.ListBuilder<SecurityGroupReference>? securityGroupReferenceSet) =>
      _$this._securityGroupReferenceSet = securityGroupReferenceSet;

  DescribeSecurityGroupReferencesResultBuilder();

  DescribeSecurityGroupReferencesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _securityGroupReferenceSet = $v.securityGroupReferenceSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSecurityGroupReferencesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSecurityGroupReferencesResult;
  }

  @override
  void update(
      void Function(DescribeSecurityGroupReferencesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSecurityGroupReferencesResult build() => _build();

  _$DescribeSecurityGroupReferencesResult _build() {
    _$DescribeSecurityGroupReferencesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSecurityGroupReferencesResult._(
              securityGroupReferenceSet: _securityGroupReferenceSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupReferenceSet';
        _securityGroupReferenceSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSecurityGroupReferencesResult',
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
