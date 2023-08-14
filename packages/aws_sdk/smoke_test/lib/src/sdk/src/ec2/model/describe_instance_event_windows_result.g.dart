// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_event_windows_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceEventWindowsResult
    extends DescribeInstanceEventWindowsResult {
  @override
  final _i2.BuiltList<InstanceEventWindow>? instanceEventWindows;
  @override
  final String? nextToken;

  factory _$DescribeInstanceEventWindowsResult(
          [void Function(DescribeInstanceEventWindowsResultBuilder)?
              updates]) =>
      (new DescribeInstanceEventWindowsResultBuilder()..update(updates))
          ._build();

  _$DescribeInstanceEventWindowsResult._(
      {this.instanceEventWindows, this.nextToken})
      : super._();

  @override
  DescribeInstanceEventWindowsResult rebuild(
          void Function(DescribeInstanceEventWindowsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceEventWindowsResultBuilder toBuilder() =>
      new DescribeInstanceEventWindowsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceEventWindowsResult &&
        instanceEventWindows == other.instanceEventWindows &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceEventWindows.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceEventWindowsResultBuilder
    implements
        Builder<DescribeInstanceEventWindowsResult,
            DescribeInstanceEventWindowsResultBuilder> {
  _$DescribeInstanceEventWindowsResult? _$v;

  _i2.ListBuilder<InstanceEventWindow>? _instanceEventWindows;
  _i2.ListBuilder<InstanceEventWindow> get instanceEventWindows =>
      _$this._instanceEventWindows ??=
          new _i2.ListBuilder<InstanceEventWindow>();
  set instanceEventWindows(
          _i2.ListBuilder<InstanceEventWindow>? instanceEventWindows) =>
      _$this._instanceEventWindows = instanceEventWindows;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeInstanceEventWindowsResultBuilder();

  DescribeInstanceEventWindowsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceEventWindows = $v.instanceEventWindows?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceEventWindowsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceEventWindowsResult;
  }

  @override
  void update(
      void Function(DescribeInstanceEventWindowsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceEventWindowsResult build() => _build();

  _$DescribeInstanceEventWindowsResult _build() {
    _$DescribeInstanceEventWindowsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceEventWindowsResult._(
              instanceEventWindows: _instanceEventWindows?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceEventWindows';
        _instanceEventWindows?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceEventWindowsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
