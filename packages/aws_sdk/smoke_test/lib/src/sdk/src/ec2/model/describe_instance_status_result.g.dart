// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_status_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceStatusResult extends DescribeInstanceStatusResult {
  @override
  final _i2.BuiltList<InstanceStatus>? instanceStatuses;
  @override
  final String? nextToken;

  factory _$DescribeInstanceStatusResult(
          [void Function(DescribeInstanceStatusResultBuilder)? updates]) =>
      (new DescribeInstanceStatusResultBuilder()..update(updates))._build();

  _$DescribeInstanceStatusResult._({this.instanceStatuses, this.nextToken})
      : super._();

  @override
  DescribeInstanceStatusResult rebuild(
          void Function(DescribeInstanceStatusResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceStatusResultBuilder toBuilder() =>
      new DescribeInstanceStatusResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceStatusResult &&
        instanceStatuses == other.instanceStatuses &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceStatuses.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceStatusResultBuilder
    implements
        Builder<DescribeInstanceStatusResult,
            DescribeInstanceStatusResultBuilder> {
  _$DescribeInstanceStatusResult? _$v;

  _i2.ListBuilder<InstanceStatus>? _instanceStatuses;
  _i2.ListBuilder<InstanceStatus> get instanceStatuses =>
      _$this._instanceStatuses ??= new _i2.ListBuilder<InstanceStatus>();
  set instanceStatuses(_i2.ListBuilder<InstanceStatus>? instanceStatuses) =>
      _$this._instanceStatuses = instanceStatuses;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeInstanceStatusResultBuilder();

  DescribeInstanceStatusResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceStatuses = $v.instanceStatuses?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceStatusResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceStatusResult;
  }

  @override
  void update(void Function(DescribeInstanceStatusResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceStatusResult build() => _build();

  _$DescribeInstanceStatusResult _build() {
    _$DescribeInstanceStatusResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceStatusResult._(
              instanceStatuses: _instanceStatuses?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceStatuses';
        _instanceStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceStatusResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
