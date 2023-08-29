// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_identity_id_format_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIdentityIdFormatResult extends DescribeIdentityIdFormatResult {
  @override
  final _i2.BuiltList<IdFormat>? statuses;

  factory _$DescribeIdentityIdFormatResult(
          [void Function(DescribeIdentityIdFormatResultBuilder)? updates]) =>
      (new DescribeIdentityIdFormatResultBuilder()..update(updates))._build();

  _$DescribeIdentityIdFormatResult._({this.statuses}) : super._();

  @override
  DescribeIdentityIdFormatResult rebuild(
          void Function(DescribeIdentityIdFormatResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIdentityIdFormatResultBuilder toBuilder() =>
      new DescribeIdentityIdFormatResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIdentityIdFormatResult &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIdentityIdFormatResultBuilder
    implements
        Builder<DescribeIdentityIdFormatResult,
            DescribeIdentityIdFormatResultBuilder> {
  _$DescribeIdentityIdFormatResult? _$v;

  _i2.ListBuilder<IdFormat>? _statuses;
  _i2.ListBuilder<IdFormat> get statuses =>
      _$this._statuses ??= new _i2.ListBuilder<IdFormat>();
  set statuses(_i2.ListBuilder<IdFormat>? statuses) =>
      _$this._statuses = statuses;

  DescribeIdentityIdFormatResultBuilder();

  DescribeIdentityIdFormatResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statuses = $v.statuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIdentityIdFormatResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIdentityIdFormatResult;
  }

  @override
  void update(void Function(DescribeIdentityIdFormatResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIdentityIdFormatResult build() => _build();

  _$DescribeIdentityIdFormatResult _build() {
    _$DescribeIdentityIdFormatResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeIdentityIdFormatResult._(statuses: _statuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statuses';
        _statuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIdentityIdFormatResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
