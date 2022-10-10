// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_compliance_by_resource_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeComplianceByResourceResponse
    extends DescribeComplianceByResourceResponse {
  @override
  final _i3.BuiltList<_i2.ComplianceByResource>? complianceByResources;
  @override
  final String? nextToken;

  factory _$DescribeComplianceByResourceResponse(
          [void Function(DescribeComplianceByResourceResponseBuilder)?
              updates]) =>
      (new DescribeComplianceByResourceResponseBuilder()..update(updates))
          ._build();

  _$DescribeComplianceByResourceResponse._(
      {this.complianceByResources, this.nextToken})
      : super._();

  @override
  DescribeComplianceByResourceResponse rebuild(
          void Function(DescribeComplianceByResourceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeComplianceByResourceResponseBuilder toBuilder() =>
      new DescribeComplianceByResourceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeComplianceByResourceResponse &&
        complianceByResources == other.complianceByResources &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, complianceByResources.hashCode), nextToken.hashCode));
  }
}

class DescribeComplianceByResourceResponseBuilder
    implements
        Builder<DescribeComplianceByResourceResponse,
            DescribeComplianceByResourceResponseBuilder> {
  _$DescribeComplianceByResourceResponse? _$v;

  _i3.ListBuilder<_i2.ComplianceByResource>? _complianceByResources;
  _i3.ListBuilder<_i2.ComplianceByResource> get complianceByResources =>
      _$this._complianceByResources ??=
          new _i3.ListBuilder<_i2.ComplianceByResource>();
  set complianceByResources(
          _i3.ListBuilder<_i2.ComplianceByResource>? complianceByResources) =>
      _$this._complianceByResources = complianceByResources;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeComplianceByResourceResponseBuilder() {
    DescribeComplianceByResourceResponse._init(this);
  }

  DescribeComplianceByResourceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceByResources = $v.complianceByResources?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeComplianceByResourceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeComplianceByResourceResponse;
  }

  @override
  void update(
      void Function(DescribeComplianceByResourceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeComplianceByResourceResponse build() => _build();

  _$DescribeComplianceByResourceResponse _build() {
    _$DescribeComplianceByResourceResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeComplianceByResourceResponse._(
              complianceByResources: _complianceByResources?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceByResources';
        _complianceByResources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeComplianceByResourceResponse',
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
