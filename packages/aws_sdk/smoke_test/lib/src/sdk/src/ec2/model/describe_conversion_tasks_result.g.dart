// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_conversion_tasks_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConversionTasksResult extends DescribeConversionTasksResult {
  @override
  final _i2.BuiltList<ConversionTask>? conversionTasks;

  factory _$DescribeConversionTasksResult(
          [void Function(DescribeConversionTasksResultBuilder)? updates]) =>
      (new DescribeConversionTasksResultBuilder()..update(updates))._build();

  _$DescribeConversionTasksResult._({this.conversionTasks}) : super._();

  @override
  DescribeConversionTasksResult rebuild(
          void Function(DescribeConversionTasksResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConversionTasksResultBuilder toBuilder() =>
      new DescribeConversionTasksResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConversionTasksResult &&
        conversionTasks == other.conversionTasks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conversionTasks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConversionTasksResultBuilder
    implements
        Builder<DescribeConversionTasksResult,
            DescribeConversionTasksResultBuilder> {
  _$DescribeConversionTasksResult? _$v;

  _i2.ListBuilder<ConversionTask>? _conversionTasks;
  _i2.ListBuilder<ConversionTask> get conversionTasks =>
      _$this._conversionTasks ??= new _i2.ListBuilder<ConversionTask>();
  set conversionTasks(_i2.ListBuilder<ConversionTask>? conversionTasks) =>
      _$this._conversionTasks = conversionTasks;

  DescribeConversionTasksResultBuilder();

  DescribeConversionTasksResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conversionTasks = $v.conversionTasks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConversionTasksResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConversionTasksResult;
  }

  @override
  void update(void Function(DescribeConversionTasksResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConversionTasksResult build() => _build();

  _$DescribeConversionTasksResult _build() {
    _$DescribeConversionTasksResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeConversionTasksResult._(
              conversionTasks: _conversionTasks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conversionTasks';
        _conversionTasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConversionTasksResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
