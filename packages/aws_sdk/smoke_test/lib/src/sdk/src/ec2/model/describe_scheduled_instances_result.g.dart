// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_scheduled_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeScheduledInstancesResult
    extends DescribeScheduledInstancesResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<ScheduledInstance>? scheduledInstanceSet;

  factory _$DescribeScheduledInstancesResult(
          [void Function(DescribeScheduledInstancesResultBuilder)? updates]) =>
      (new DescribeScheduledInstancesResultBuilder()..update(updates))._build();

  _$DescribeScheduledInstancesResult._(
      {this.nextToken, this.scheduledInstanceSet})
      : super._();

  @override
  DescribeScheduledInstancesResult rebuild(
          void Function(DescribeScheduledInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeScheduledInstancesResultBuilder toBuilder() =>
      new DescribeScheduledInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeScheduledInstancesResult &&
        nextToken == other.nextToken &&
        scheduledInstanceSet == other.scheduledInstanceSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, scheduledInstanceSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeScheduledInstancesResultBuilder
    implements
        Builder<DescribeScheduledInstancesResult,
            DescribeScheduledInstancesResultBuilder> {
  _$DescribeScheduledInstancesResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<ScheduledInstance>? _scheduledInstanceSet;
  _i2.ListBuilder<ScheduledInstance> get scheduledInstanceSet =>
      _$this._scheduledInstanceSet ??= new _i2.ListBuilder<ScheduledInstance>();
  set scheduledInstanceSet(
          _i2.ListBuilder<ScheduledInstance>? scheduledInstanceSet) =>
      _$this._scheduledInstanceSet = scheduledInstanceSet;

  DescribeScheduledInstancesResultBuilder();

  DescribeScheduledInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _scheduledInstanceSet = $v.scheduledInstanceSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeScheduledInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeScheduledInstancesResult;
  }

  @override
  void update(void Function(DescribeScheduledInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeScheduledInstancesResult build() => _build();

  _$DescribeScheduledInstancesResult _build() {
    _$DescribeScheduledInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeScheduledInstancesResult._(
              nextToken: nextToken,
              scheduledInstanceSet: _scheduledInstanceSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scheduledInstanceSet';
        _scheduledInstanceSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeScheduledInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
