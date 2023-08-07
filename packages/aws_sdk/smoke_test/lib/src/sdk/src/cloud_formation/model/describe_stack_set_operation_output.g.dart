// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_stack_set_operation_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackSetOperationOutput
    extends DescribeStackSetOperationOutput {
  @override
  final StackSetOperation? stackSetOperation;

  factory _$DescribeStackSetOperationOutput(
          [void Function(DescribeStackSetOperationOutputBuilder)? updates]) =>
      (new DescribeStackSetOperationOutputBuilder()..update(updates))._build();

  _$DescribeStackSetOperationOutput._({this.stackSetOperation}) : super._();

  @override
  DescribeStackSetOperationOutput rebuild(
          void Function(DescribeStackSetOperationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackSetOperationOutputBuilder toBuilder() =>
      new DescribeStackSetOperationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackSetOperationOutput &&
        stackSetOperation == other.stackSetOperation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetOperation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackSetOperationOutputBuilder
    implements
        Builder<DescribeStackSetOperationOutput,
            DescribeStackSetOperationOutputBuilder> {
  _$DescribeStackSetOperationOutput? _$v;

  StackSetOperationBuilder? _stackSetOperation;
  StackSetOperationBuilder get stackSetOperation =>
      _$this._stackSetOperation ??= new StackSetOperationBuilder();
  set stackSetOperation(StackSetOperationBuilder? stackSetOperation) =>
      _$this._stackSetOperation = stackSetOperation;

  DescribeStackSetOperationOutputBuilder();

  DescribeStackSetOperationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetOperation = $v.stackSetOperation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackSetOperationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackSetOperationOutput;
  }

  @override
  void update(void Function(DescribeStackSetOperationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackSetOperationOutput build() => _build();

  _$DescribeStackSetOperationOutput _build() {
    _$DescribeStackSetOperationOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeStackSetOperationOutput._(
              stackSetOperation: _stackSetOperation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackSetOperation';
        _stackSetOperation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStackSetOperationOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
