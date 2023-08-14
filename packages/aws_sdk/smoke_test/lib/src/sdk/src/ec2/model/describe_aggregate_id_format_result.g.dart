// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_aggregate_id_format_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregateIdFormatResult
    extends DescribeAggregateIdFormatResult {
  @override
  final bool useLongIdsAggregated;
  @override
  final _i2.BuiltList<IdFormat>? statuses;

  factory _$DescribeAggregateIdFormatResult(
          [void Function(DescribeAggregateIdFormatResultBuilder)? updates]) =>
      (new DescribeAggregateIdFormatResultBuilder()..update(updates))._build();

  _$DescribeAggregateIdFormatResult._(
      {required this.useLongIdsAggregated, this.statuses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(useLongIdsAggregated,
        r'DescribeAggregateIdFormatResult', 'useLongIdsAggregated');
  }

  @override
  DescribeAggregateIdFormatResult rebuild(
          void Function(DescribeAggregateIdFormatResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregateIdFormatResultBuilder toBuilder() =>
      new DescribeAggregateIdFormatResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregateIdFormatResult &&
        useLongIdsAggregated == other.useLongIdsAggregated &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, useLongIdsAggregated.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAggregateIdFormatResultBuilder
    implements
        Builder<DescribeAggregateIdFormatResult,
            DescribeAggregateIdFormatResultBuilder> {
  _$DescribeAggregateIdFormatResult? _$v;

  bool? _useLongIdsAggregated;
  bool? get useLongIdsAggregated => _$this._useLongIdsAggregated;
  set useLongIdsAggregated(bool? useLongIdsAggregated) =>
      _$this._useLongIdsAggregated = useLongIdsAggregated;

  _i2.ListBuilder<IdFormat>? _statuses;
  _i2.ListBuilder<IdFormat> get statuses =>
      _$this._statuses ??= new _i2.ListBuilder<IdFormat>();
  set statuses(_i2.ListBuilder<IdFormat>? statuses) =>
      _$this._statuses = statuses;

  DescribeAggregateIdFormatResultBuilder() {
    DescribeAggregateIdFormatResult._init(this);
  }

  DescribeAggregateIdFormatResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _useLongIdsAggregated = $v.useLongIdsAggregated;
      _statuses = $v.statuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregateIdFormatResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregateIdFormatResult;
  }

  @override
  void update(void Function(DescribeAggregateIdFormatResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregateIdFormatResult build() => _build();

  _$DescribeAggregateIdFormatResult _build() {
    _$DescribeAggregateIdFormatResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeAggregateIdFormatResult._(
              useLongIdsAggregated: BuiltValueNullFieldError.checkNotNull(
                  useLongIdsAggregated,
                  r'DescribeAggregateIdFormatResult',
                  'useLongIdsAggregated'),
              statuses: _statuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statuses';
        _statuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAggregateIdFormatResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
