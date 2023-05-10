// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stacks_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStacksOutput extends DescribeStacksOutput {
  @override
  final _i3.BuiltList<_i2.Stack>? stacks;
  @override
  final String? nextToken;

  factory _$DescribeStacksOutput(
          [void Function(DescribeStacksOutputBuilder)? updates]) =>
      (new DescribeStacksOutputBuilder()..update(updates))._build();

  _$DescribeStacksOutput._({this.stacks, this.nextToken}) : super._();

  @override
  DescribeStacksOutput rebuild(
          void Function(DescribeStacksOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStacksOutputBuilder toBuilder() =>
      new DescribeStacksOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStacksOutput &&
        stacks == other.stacks &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stacks.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStacksOutputBuilder
    implements Builder<DescribeStacksOutput, DescribeStacksOutputBuilder> {
  _$DescribeStacksOutput? _$v;

  _i3.ListBuilder<_i2.Stack>? _stacks;
  _i3.ListBuilder<_i2.Stack> get stacks =>
      _$this._stacks ??= new _i3.ListBuilder<_i2.Stack>();
  set stacks(_i3.ListBuilder<_i2.Stack>? stacks) => _$this._stacks = stacks;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeStacksOutputBuilder() {
    DescribeStacksOutput._init(this);
  }

  DescribeStacksOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stacks = $v.stacks?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStacksOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStacksOutput;
  }

  @override
  void update(void Function(DescribeStacksOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStacksOutput build() => _build();

  _$DescribeStacksOutput _build() {
    _$DescribeStacksOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeStacksOutput._(
              stacks: _stacks?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stacks';
        _stacks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStacksOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
