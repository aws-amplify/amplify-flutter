// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_account_attributes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAccountAttributesResult
    extends DescribeAccountAttributesResult {
  @override
  final _i2.BuiltList<AccountAttribute>? accountAttributes;

  factory _$DescribeAccountAttributesResult(
          [void Function(DescribeAccountAttributesResultBuilder)? updates]) =>
      (new DescribeAccountAttributesResultBuilder()..update(updates))._build();

  _$DescribeAccountAttributesResult._({this.accountAttributes}) : super._();

  @override
  DescribeAccountAttributesResult rebuild(
          void Function(DescribeAccountAttributesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAccountAttributesResultBuilder toBuilder() =>
      new DescribeAccountAttributesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAccountAttributesResult &&
        accountAttributes == other.accountAttributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountAttributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAccountAttributesResultBuilder
    implements
        Builder<DescribeAccountAttributesResult,
            DescribeAccountAttributesResultBuilder> {
  _$DescribeAccountAttributesResult? _$v;

  _i2.ListBuilder<AccountAttribute>? _accountAttributes;
  _i2.ListBuilder<AccountAttribute> get accountAttributes =>
      _$this._accountAttributes ??= new _i2.ListBuilder<AccountAttribute>();
  set accountAttributes(_i2.ListBuilder<AccountAttribute>? accountAttributes) =>
      _$this._accountAttributes = accountAttributes;

  DescribeAccountAttributesResultBuilder();

  DescribeAccountAttributesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountAttributes = $v.accountAttributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAccountAttributesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAccountAttributesResult;
  }

  @override
  void update(void Function(DescribeAccountAttributesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAccountAttributesResult build() => _build();

  _$DescribeAccountAttributesResult _build() {
    _$DescribeAccountAttributesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeAccountAttributesResult._(
              accountAttributes: _accountAttributes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountAttributes';
        _accountAttributes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAccountAttributesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
