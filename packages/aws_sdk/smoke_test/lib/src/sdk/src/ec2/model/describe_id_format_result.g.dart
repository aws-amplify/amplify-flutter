// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_id_format_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIdFormatResult extends DescribeIdFormatResult {
  @override
  final _i2.BuiltList<IdFormat>? statuses;

  factory _$DescribeIdFormatResult(
          [void Function(DescribeIdFormatResultBuilder)? updates]) =>
      (new DescribeIdFormatResultBuilder()..update(updates))._build();

  _$DescribeIdFormatResult._({this.statuses}) : super._();

  @override
  DescribeIdFormatResult rebuild(
          void Function(DescribeIdFormatResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIdFormatResultBuilder toBuilder() =>
      new DescribeIdFormatResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIdFormatResult && statuses == other.statuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIdFormatResultBuilder
    implements Builder<DescribeIdFormatResult, DescribeIdFormatResultBuilder> {
  _$DescribeIdFormatResult? _$v;

  _i2.ListBuilder<IdFormat>? _statuses;
  _i2.ListBuilder<IdFormat> get statuses =>
      _$this._statuses ??= new _i2.ListBuilder<IdFormat>();
  set statuses(_i2.ListBuilder<IdFormat>? statuses) =>
      _$this._statuses = statuses;

  DescribeIdFormatResultBuilder();

  DescribeIdFormatResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statuses = $v.statuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIdFormatResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIdFormatResult;
  }

  @override
  void update(void Function(DescribeIdFormatResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIdFormatResult build() => _build();

  _$DescribeIdFormatResult _build() {
    _$DescribeIdFormatResult _$result;
    try {
      _$result =
          _$v ?? new _$DescribeIdFormatResult._(statuses: _statuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statuses';
        _statuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIdFormatResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
