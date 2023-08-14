// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_stack_events_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackEventsOutput extends DescribeStackEventsOutput {
  @override
  final _i2.BuiltList<StackEvent>? stackEvents;
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

  _i2.ListBuilder<StackEvent>? _stackEvents;
  _i2.ListBuilder<StackEvent> get stackEvents =>
      _$this._stackEvents ??= new _i2.ListBuilder<StackEvent>();
  set stackEvents(_i2.ListBuilder<StackEvent>? stackEvents) =>
      _$this._stackEvents = stackEvents;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeStackEventsOutputBuilder();

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
