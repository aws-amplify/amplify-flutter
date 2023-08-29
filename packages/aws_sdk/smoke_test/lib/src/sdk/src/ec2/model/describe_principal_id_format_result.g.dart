// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_principal_id_format_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePrincipalIdFormatResult
    extends DescribePrincipalIdFormatResult {
  @override
  final _i2.BuiltList<PrincipalIdFormat>? principals;
  @override
  final String? nextToken;

  factory _$DescribePrincipalIdFormatResult(
          [void Function(DescribePrincipalIdFormatResultBuilder)? updates]) =>
      (new DescribePrincipalIdFormatResultBuilder()..update(updates))._build();

  _$DescribePrincipalIdFormatResult._({this.principals, this.nextToken})
      : super._();

  @override
  DescribePrincipalIdFormatResult rebuild(
          void Function(DescribePrincipalIdFormatResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePrincipalIdFormatResultBuilder toBuilder() =>
      new DescribePrincipalIdFormatResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePrincipalIdFormatResult &&
        principals == other.principals &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principals.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribePrincipalIdFormatResultBuilder
    implements
        Builder<DescribePrincipalIdFormatResult,
            DescribePrincipalIdFormatResultBuilder> {
  _$DescribePrincipalIdFormatResult? _$v;

  _i2.ListBuilder<PrincipalIdFormat>? _principals;
  _i2.ListBuilder<PrincipalIdFormat> get principals =>
      _$this._principals ??= new _i2.ListBuilder<PrincipalIdFormat>();
  set principals(_i2.ListBuilder<PrincipalIdFormat>? principals) =>
      _$this._principals = principals;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribePrincipalIdFormatResultBuilder();

  DescribePrincipalIdFormatResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principals = $v.principals?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePrincipalIdFormatResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePrincipalIdFormatResult;
  }

  @override
  void update(void Function(DescribePrincipalIdFormatResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePrincipalIdFormatResult build() => _build();

  _$DescribePrincipalIdFormatResult _build() {
    _$DescribePrincipalIdFormatResult _$result;
    try {
      _$result = _$v ??
          new _$DescribePrincipalIdFormatResult._(
              principals: _principals?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'principals';
        _principals?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribePrincipalIdFormatResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
