// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_conformance_pack_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConformancePackStatusRequest
    extends DescribeConformancePackStatusRequest {
  @override
  final _i3.BuiltList<String>? conformancePackNames;
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$DescribeConformancePackStatusRequest(
          [void Function(DescribeConformancePackStatusRequestBuilder)?
              updates]) =>
      (new DescribeConformancePackStatusRequestBuilder()..update(updates))
          ._build();

  _$DescribeConformancePackStatusRequest._(
      {this.conformancePackNames, this.limit, this.nextToken})
      : super._();

  @override
  DescribeConformancePackStatusRequest rebuild(
          void Function(DescribeConformancePackStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConformancePackStatusRequestBuilder toBuilder() =>
      new DescribeConformancePackStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConformancePackStatusRequest &&
        conformancePackNames == other.conformancePackNames &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, conformancePackNames.hashCode), limit.hashCode),
        nextToken.hashCode));
  }
}

class DescribeConformancePackStatusRequestBuilder
    implements
        Builder<DescribeConformancePackStatusRequest,
            DescribeConformancePackStatusRequestBuilder> {
  _$DescribeConformancePackStatusRequest? _$v;

  _i3.ListBuilder<String>? _conformancePackNames;
  _i3.ListBuilder<String> get conformancePackNames =>
      _$this._conformancePackNames ??= new _i3.ListBuilder<String>();
  set conformancePackNames(_i3.ListBuilder<String>? conformancePackNames) =>
      _$this._conformancePackNames = conformancePackNames;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConformancePackStatusRequestBuilder() {
    DescribeConformancePackStatusRequest._init(this);
  }

  DescribeConformancePackStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackNames = $v.conformancePackNames?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConformancePackStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConformancePackStatusRequest;
  }

  @override
  void update(
      void Function(DescribeConformancePackStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConformancePackStatusRequest build() => _build();

  _$DescribeConformancePackStatusRequest _build() {
    _$DescribeConformancePackStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConformancePackStatusRequest._(
              conformancePackNames: _conformancePackNames?.build(),
              limit: limit,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackNames';
        _conformancePackNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConformancePackStatusRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
