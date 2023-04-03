// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_stack_events_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackEventsOutput extends DescribeStackEventsOutput {
  @override
  final _i3.BuiltList<_i2.StackEvent>? stackEvents;
  @override
  final String? nextToken;

  factory _$DescribeStackEventsOutput(
          [void Function(DescribeStackEventsOutputBuilder)? updates]) =>
      (new DescribeStackEventsOutputBuilder()..update(updates))._build();

  _$DescribeStackEventsOutput._({this.stackEvents, this.nextToken}) : super._();

  @override
  DescribeStackEventsOutput rebuild(
          void Function(DescribeStackEventsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackEventsOutputBuilder toBuilder() =>
      new DescribeStackEventsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackEventsOutput &&
        stackEvents == other.stackEvents &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackEvents.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackEventsOutputBuilder
    implements
        Builder<DescribeStackEventsOutput, DescribeStackEventsOutputBuilder> {
  _$DescribeStackEventsOutput? _$v;

  _i3.ListBuilder<_i2.StackEvent>? _stackEvents;
  _i3.ListBuilder<_i2.StackEvent> get stackEvents =>
      _$this._stackEvents ??= new _i3.ListBuilder<_i2.StackEvent>();
  set stackEvents(_i3.ListBuilder<_i2.StackEvent>? stackEvents) =>
      _$this._stackEvents = stackEvents;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeStackEventsOutputBuilder() {
    DescribeStackEventsOutput._init(this);
  }

  DescribeStackEventsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackEvents = $v.stackEvents?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackEventsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackEventsOutput;
  }

  @override
  void update(void Function(DescribeStackEventsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackEventsOutput build() => _build();

  _$DescribeStackEventsOutput _build() {
    _$DescribeStackEventsOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeStackEventsOutput._(
              stackEvents: _stackEvents?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackEvents';
        _stackEvents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStackEventsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
