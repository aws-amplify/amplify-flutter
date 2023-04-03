// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_instance_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackInstanceOutput extends DescribeStackInstanceOutput {
  @override
  final _i2.StackInstance? stackInstance;

  factory _$DescribeStackInstanceOutput(
          [void Function(DescribeStackInstanceOutputBuilder)? updates]) =>
      (new DescribeStackInstanceOutputBuilder()..update(updates))._build();

  _$DescribeStackInstanceOutput._({this.stackInstance}) : super._();

  @override
  DescribeStackInstanceOutput rebuild(
          void Function(DescribeStackInstanceOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackInstanceOutputBuilder toBuilder() =>
      new DescribeStackInstanceOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackInstanceOutput &&
        stackInstance == other.stackInstance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackInstance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackInstanceOutputBuilder
    implements
        Builder<DescribeStackInstanceOutput,
            DescribeStackInstanceOutputBuilder> {
  _$DescribeStackInstanceOutput? _$v;

  _i2.StackInstanceBuilder? _stackInstance;
  _i2.StackInstanceBuilder get stackInstance =>
      _$this._stackInstance ??= new _i2.StackInstanceBuilder();
  set stackInstance(_i2.StackInstanceBuilder? stackInstance) =>
      _$this._stackInstance = stackInstance;

  DescribeStackInstanceOutputBuilder() {
    DescribeStackInstanceOutput._init(this);
  }

  DescribeStackInstanceOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackInstance = $v.stackInstance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackInstanceOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackInstanceOutput;
  }

  @override
  void update(void Function(DescribeStackInstanceOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackInstanceOutput build() => _build();

  _$DescribeStackInstanceOutput _build() {
    _$DescribeStackInstanceOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeStackInstanceOutput._(
              stackInstance: _stackInstance?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackInstance';
        _stackInstance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStackInstanceOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
