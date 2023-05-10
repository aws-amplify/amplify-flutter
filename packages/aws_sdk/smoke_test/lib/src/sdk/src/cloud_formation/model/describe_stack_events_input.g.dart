// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_events_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackEventsInput extends DescribeStackEventsInput {
  @override
  final String? stackName;
  @override
  final String? nextToken;

  factory _$DescribeStackEventsInput(
          [void Function(DescribeStackEventsInputBuilder)? updates]) =>
      (new DescribeStackEventsInputBuilder()..update(updates))._build();

  _$DescribeStackEventsInput._({this.stackName, this.nextToken}) : super._();

  @override
  DescribeStackEventsInput rebuild(
          void Function(DescribeStackEventsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackEventsInputBuilder toBuilder() =>
      new DescribeStackEventsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackEventsInput &&
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

class DescribeStackEventsInputBuilder
    implements
        Builder<DescribeStackEventsInput, DescribeStackEventsInputBuilder> {
  _$DescribeStackEventsInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeStackEventsInputBuilder() {
    DescribeStackEventsInput._init(this);
  }

  DescribeStackEventsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackEventsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackEventsInput;
  }

  @override
  void update(void Function(DescribeStackEventsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackEventsInput build() => _build();

  _$DescribeStackEventsInput _build() {
    final _$result = _$v ??
        new _$DescribeStackEventsInput._(
            stackName: stackName, nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
