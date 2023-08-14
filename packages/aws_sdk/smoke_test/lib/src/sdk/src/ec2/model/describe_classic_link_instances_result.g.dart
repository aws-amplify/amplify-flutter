// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_classic_link_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClassicLinkInstancesResult
    extends DescribeClassicLinkInstancesResult {
  @override
  final _i2.BuiltList<ClassicLinkInstance>? instances;
  @override
  final String? nextToken;

  factory _$DescribeClassicLinkInstancesResult(
          [void Function(DescribeClassicLinkInstancesResultBuilder)?
              updates]) =>
      (new DescribeClassicLinkInstancesResultBuilder()..update(updates))
          ._build();

  _$DescribeClassicLinkInstancesResult._({this.instances, this.nextToken})
      : super._();

  @override
  DescribeClassicLinkInstancesResult rebuild(
          void Function(DescribeClassicLinkInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClassicLinkInstancesResultBuilder toBuilder() =>
      new DescribeClassicLinkInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClassicLinkInstancesResult &&
        instances == other.instances &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instances.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClassicLinkInstancesResultBuilder
    implements
        Builder<DescribeClassicLinkInstancesResult,
            DescribeClassicLinkInstancesResultBuilder> {
  _$DescribeClassicLinkInstancesResult? _$v;

  _i2.ListBuilder<ClassicLinkInstance>? _instances;
  _i2.ListBuilder<ClassicLinkInstance> get instances =>
      _$this._instances ??= new _i2.ListBuilder<ClassicLinkInstance>();
  set instances(_i2.ListBuilder<ClassicLinkInstance>? instances) =>
      _$this._instances = instances;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeClassicLinkInstancesResultBuilder();

  DescribeClassicLinkInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instances = $v.instances?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClassicLinkInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClassicLinkInstancesResult;
  }

  @override
  void update(
      void Function(DescribeClassicLinkInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClassicLinkInstancesResult build() => _build();

  _$DescribeClassicLinkInstancesResult _build() {
    _$DescribeClassicLinkInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeClassicLinkInstancesResult._(
              instances: _instances?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instances';
        _instances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClassicLinkInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
