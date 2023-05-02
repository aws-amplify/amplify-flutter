// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_set_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackSetInput extends DescribeStackSetInput {
  @override
  final String stackSetName;
  @override
  final _i3.CallAs? callAs;

  factory _$DescribeStackSetInput(
          [void Function(DescribeStackSetInputBuilder)? updates]) =>
      (new DescribeStackSetInputBuilder()..update(updates))._build();

  _$DescribeStackSetInput._({required this.stackSetName, this.callAs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackSetName, r'DescribeStackSetInput', 'stackSetName');
  }

  @override
  DescribeStackSetInput rebuild(
          void Function(DescribeStackSetInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackSetInputBuilder toBuilder() =>
      new DescribeStackSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackSetInput &&
        stackSetName == other.stackSetName &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackSetInputBuilder
    implements Builder<DescribeStackSetInput, DescribeStackSetInputBuilder> {
  _$DescribeStackSetInput? _$v;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  _i3.CallAs? _callAs;
  _i3.CallAs? get callAs => _$this._callAs;
  set callAs(_i3.CallAs? callAs) => _$this._callAs = callAs;

  DescribeStackSetInputBuilder() {
    DescribeStackSetInput._init(this);
  }

  DescribeStackSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetName = $v.stackSetName;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackSetInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackSetInput;
  }

  @override
  void update(void Function(DescribeStackSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackSetInput build() => _build();

  _$DescribeStackSetInput _build() {
    final _$result = _$v ??
        new _$DescribeStackSetInput._(
            stackSetName: BuiltValueNullFieldError.checkNotNull(
                stackSetName, r'DescribeStackSetInput', 'stackSetName'),
            callAs: callAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
