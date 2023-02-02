// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_summary_by_resource_type_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceSummaryByResourceTypeRequest
    extends GetComplianceSummaryByResourceTypeRequest {
  @override
  final _i3.BuiltList<String>? resourceTypes;

  factory _$GetComplianceSummaryByResourceTypeRequest(
          [void Function(GetComplianceSummaryByResourceTypeRequestBuilder)?
              updates]) =>
      (new GetComplianceSummaryByResourceTypeRequestBuilder()..update(updates))
          ._build();

  _$GetComplianceSummaryByResourceTypeRequest._({this.resourceTypes})
      : super._();

  @override
  GetComplianceSummaryByResourceTypeRequest rebuild(
          void Function(GetComplianceSummaryByResourceTypeRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceSummaryByResourceTypeRequestBuilder toBuilder() =>
      new GetComplianceSummaryByResourceTypeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceSummaryByResourceTypeRequest &&
        resourceTypes == other.resourceTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetComplianceSummaryByResourceTypeRequestBuilder
    implements
        Builder<GetComplianceSummaryByResourceTypeRequest,
            GetComplianceSummaryByResourceTypeRequestBuilder> {
  _$GetComplianceSummaryByResourceTypeRequest? _$v;

  _i3.ListBuilder<String>? _resourceTypes;
  _i3.ListBuilder<String> get resourceTypes =>
      _$this._resourceTypes ??= new _i3.ListBuilder<String>();
  set resourceTypes(_i3.ListBuilder<String>? resourceTypes) =>
      _$this._resourceTypes = resourceTypes;

  GetComplianceSummaryByResourceTypeRequestBuilder() {
    GetComplianceSummaryByResourceTypeRequest._init(this);
  }

  GetComplianceSummaryByResourceTypeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceSummaryByResourceTypeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceSummaryByResourceTypeRequest;
  }

  @override
  void update(
      void Function(GetComplianceSummaryByResourceTypeRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceSummaryByResourceTypeRequest build() => _build();

  _$GetComplianceSummaryByResourceTypeRequest _build() {
    _$GetComplianceSummaryByResourceTypeRequest _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceSummaryByResourceTypeRequest._(
              resourceTypes: _resourceTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceTypes';
        _resourceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceSummaryByResourceTypeRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
