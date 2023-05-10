// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_set_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackSetOutput extends DescribeStackSetOutput {
  @override
  final _i2.StackSet? stackSet;

  factory _$DescribeStackSetOutput(
          [void Function(DescribeStackSetOutputBuilder)? updates]) =>
      (new DescribeStackSetOutputBuilder()..update(updates))._build();

  _$DescribeStackSetOutput._({this.stackSet}) : super._();

  @override
  DescribeStackSetOutput rebuild(
          void Function(DescribeStackSetOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackSetOutputBuilder toBuilder() =>
      new DescribeStackSetOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackSetOutput && stackSet == other.stackSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackSetOutputBuilder
    implements Builder<DescribeStackSetOutput, DescribeStackSetOutputBuilder> {
  _$DescribeStackSetOutput? _$v;

  _i2.StackSetBuilder? _stackSet;
  _i2.StackSetBuilder get stackSet =>
      _$this._stackSet ??= new _i2.StackSetBuilder();
  set stackSet(_i2.StackSetBuilder? stackSet) => _$this._stackSet = stackSet;

  DescribeStackSetOutputBuilder() {
    DescribeStackSetOutput._init(this);
  }

  DescribeStackSetOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSet = $v.stackSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackSetOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackSetOutput;
  }

  @override
  void update(void Function(DescribeStackSetOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackSetOutput build() => _build();

  _$DescribeStackSetOutput _build() {
    _$DescribeStackSetOutput _$result;
    try {
      _$result =
          _$v ?? new _$DescribeStackSetOutput._(stackSet: _stackSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackSet';
        _stackSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStackSetOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
