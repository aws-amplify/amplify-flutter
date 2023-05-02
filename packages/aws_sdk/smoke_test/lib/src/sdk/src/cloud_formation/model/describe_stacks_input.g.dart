// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stacks_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStacksInput extends DescribeStacksInput {
  @override
  final String? stackName;
  @override
  final String? nextToken;

  factory _$DescribeStacksInput(
          [void Function(DescribeStacksInputBuilder)? updates]) =>
      (new DescribeStacksInputBuilder()..update(updates))._build();

  _$DescribeStacksInput._({this.stackName, this.nextToken}) : super._();

  @override
  DescribeStacksInput rebuild(
          void Function(DescribeStacksInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStacksInputBuilder toBuilder() =>
      new DescribeStacksInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStacksInput &&
        stackName == other.stackName &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStacksInputBuilder
    implements Builder<DescribeStacksInput, DescribeStacksInputBuilder> {
  _$DescribeStacksInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeStacksInputBuilder() {
    DescribeStacksInput._init(this);
  }

  DescribeStacksInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStacksInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStacksInput;
  }

  @override
  void update(void Function(DescribeStacksInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStacksInput build() => _build();

  _$DescribeStacksInput _build() {
    final _$result = _$v ??
        new _$DescribeStacksInput._(stackName: stackName, nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
