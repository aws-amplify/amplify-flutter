// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_verified_access_groups_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVerifiedAccessGroupsResult
    extends DescribeVerifiedAccessGroupsResult {
  @override
  final _i2.BuiltList<VerifiedAccessGroup>? verifiedAccessGroups;
  @override
  final String? nextToken;

  factory _$DescribeVerifiedAccessGroupsResult(
          [void Function(DescribeVerifiedAccessGroupsResultBuilder)?
              updates]) =>
      (new DescribeVerifiedAccessGroupsResultBuilder()..update(updates))
          ._build();

  _$DescribeVerifiedAccessGroupsResult._(
      {this.verifiedAccessGroups, this.nextToken})
      : super._();

  @override
  DescribeVerifiedAccessGroupsResult rebuild(
          void Function(DescribeVerifiedAccessGroupsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVerifiedAccessGroupsResultBuilder toBuilder() =>
      new DescribeVerifiedAccessGroupsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVerifiedAccessGroupsResult &&
        verifiedAccessGroups == other.verifiedAccessGroups &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessGroups.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVerifiedAccessGroupsResultBuilder
    implements
        Builder<DescribeVerifiedAccessGroupsResult,
            DescribeVerifiedAccessGroupsResultBuilder> {
  _$DescribeVerifiedAccessGroupsResult? _$v;

  _i2.ListBuilder<VerifiedAccessGroup>? _verifiedAccessGroups;
  _i2.ListBuilder<VerifiedAccessGroup> get verifiedAccessGroups =>
      _$this._verifiedAccessGroups ??=
          new _i2.ListBuilder<VerifiedAccessGroup>();
  set verifiedAccessGroups(
          _i2.ListBuilder<VerifiedAccessGroup>? verifiedAccessGroups) =>
      _$this._verifiedAccessGroups = verifiedAccessGroups;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVerifiedAccessGroupsResultBuilder();

  DescribeVerifiedAccessGroupsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroups = $v.verifiedAccessGroups?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVerifiedAccessGroupsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVerifiedAccessGroupsResult;
  }

  @override
  void update(
      void Function(DescribeVerifiedAccessGroupsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVerifiedAccessGroupsResult build() => _build();

  _$DescribeVerifiedAccessGroupsResult _build() {
    _$DescribeVerifiedAccessGroupsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVerifiedAccessGroupsResult._(
              verifiedAccessGroups: _verifiedAccessGroups?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessGroups';
        _verifiedAccessGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVerifiedAccessGroupsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
