// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_iam_instance_profile_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIamInstanceProfileAssociationsResult
    extends DescribeIamInstanceProfileAssociationsResult {
  @override
  final _i2.BuiltList<IamInstanceProfileAssociation>?
      iamInstanceProfileAssociations;
  @override
  final String? nextToken;

  factory _$DescribeIamInstanceProfileAssociationsResult(
          [void Function(DescribeIamInstanceProfileAssociationsResultBuilder)?
              updates]) =>
      (new DescribeIamInstanceProfileAssociationsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeIamInstanceProfileAssociationsResult._(
      {this.iamInstanceProfileAssociations, this.nextToken})
      : super._();

  @override
  DescribeIamInstanceProfileAssociationsResult rebuild(
          void Function(DescribeIamInstanceProfileAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIamInstanceProfileAssociationsResultBuilder toBuilder() =>
      new DescribeIamInstanceProfileAssociationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIamInstanceProfileAssociationsResult &&
        iamInstanceProfileAssociations ==
            other.iamInstanceProfileAssociations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, iamInstanceProfileAssociations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIamInstanceProfileAssociationsResultBuilder
    implements
        Builder<DescribeIamInstanceProfileAssociationsResult,
            DescribeIamInstanceProfileAssociationsResultBuilder> {
  _$DescribeIamInstanceProfileAssociationsResult? _$v;

  _i2.ListBuilder<IamInstanceProfileAssociation>?
      _iamInstanceProfileAssociations;
  _i2.ListBuilder<IamInstanceProfileAssociation>
      get iamInstanceProfileAssociations =>
          _$this._iamInstanceProfileAssociations ??=
              new _i2.ListBuilder<IamInstanceProfileAssociation>();
  set iamInstanceProfileAssociations(
          _i2.ListBuilder<IamInstanceProfileAssociation>?
              iamInstanceProfileAssociations) =>
      _$this._iamInstanceProfileAssociations = iamInstanceProfileAssociations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeIamInstanceProfileAssociationsResultBuilder();

  DescribeIamInstanceProfileAssociationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iamInstanceProfileAssociations =
          $v.iamInstanceProfileAssociations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIamInstanceProfileAssociationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIamInstanceProfileAssociationsResult;
  }

  @override
  void update(
      void Function(DescribeIamInstanceProfileAssociationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIamInstanceProfileAssociationsResult build() => _build();

  _$DescribeIamInstanceProfileAssociationsResult _build() {
    _$DescribeIamInstanceProfileAssociationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeIamInstanceProfileAssociationsResult._(
              iamInstanceProfileAssociations:
                  _iamInstanceProfileAssociations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iamInstanceProfileAssociations';
        _iamInstanceProfileAssociations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIamInstanceProfileAssociationsResult',
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
