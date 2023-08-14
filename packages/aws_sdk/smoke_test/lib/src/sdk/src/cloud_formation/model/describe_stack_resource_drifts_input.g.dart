// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_stack_resource_drifts_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStackResourceDriftsInput
    extends DescribeStackResourceDriftsInput {
  @override
  final String stackName;
  @override
  final _i3.BuiltList<StackResourceDriftStatus>?
      stackResourceDriftStatusFilters;
  @override
  final String? nextToken;
  @override
  final int? maxResults;

  factory _$DescribeStackResourceDriftsInput(
          [void Function(DescribeStackResourceDriftsInputBuilder)? updates]) =>
      (new DescribeStackResourceDriftsInputBuilder()..update(updates))._build();

  _$DescribeStackResourceDriftsInput._(
      {required this.stackName,
      this.stackResourceDriftStatusFilters,
      this.nextToken,
      this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'DescribeStackResourceDriftsInput', 'stackName');
  }

  @override
  DescribeStackResourceDriftsInput rebuild(
          void Function(DescribeStackResourceDriftsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStackResourceDriftsInputBuilder toBuilder() =>
      new DescribeStackResourceDriftsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStackResourceDriftsInput &&
        stackName == other.stackName &&
        stackResourceDriftStatusFilters ==
            other.stackResourceDriftStatusFilters &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, stackResourceDriftStatusFilters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStackResourceDriftsInputBuilder
    implements
        Builder<DescribeStackResourceDriftsInput,
            DescribeStackResourceDriftsInputBuilder> {
  _$DescribeStackResourceDriftsInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  _i3.ListBuilder<StackResourceDriftStatus>? _stackResourceDriftStatusFilters;
  _i3.ListBuilder<StackResourceDriftStatus>
      get stackResourceDriftStatusFilters =>
          _$this._stackResourceDriftStatusFilters ??=
              new _i3.ListBuilder<StackResourceDriftStatus>();
  set stackResourceDriftStatusFilters(
          _i3.ListBuilder<StackResourceDriftStatus>?
              stackResourceDriftStatusFilters) =>
      _$this._stackResourceDriftStatusFilters = stackResourceDriftStatusFilters;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeStackResourceDriftsInputBuilder();

  DescribeStackResourceDriftsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _stackResourceDriftStatusFilters =
          $v.stackResourceDriftStatusFilters?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStackResourceDriftsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStackResourceDriftsInput;
  }

  @override
  void update(void Function(DescribeStackResourceDriftsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStackResourceDriftsInput build() => _build();

  _$DescribeStackResourceDriftsInput _build() {
    _$DescribeStackResourceDriftsInput _$result;
    try {
      _$result = _$v ??
          new _$DescribeStackResourceDriftsInput._(
              stackName: BuiltValueNullFieldError.checkNotNull(
                  stackName, r'DescribeStackResourceDriftsInput', 'stackName'),
              stackResourceDriftStatusFilters:
                  _stackResourceDriftStatusFilters?.build(),
              nextToken: nextToken,
              maxResults: maxResults);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackResourceDriftStatusFilters';
        _stackResourceDriftStatusFilters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStackResourceDriftsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
