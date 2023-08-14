// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_requirements_with_metadata_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceRequirementsWithMetadataRequest
    extends InstanceRequirementsWithMetadataRequest {
  @override
  final _i2.BuiltList<ArchitectureType>? architectureTypes;
  @override
  final _i2.BuiltList<VirtualizationType>? virtualizationTypes;
  @override
  final InstanceRequirementsRequest? instanceRequirements;

  factory _$InstanceRequirementsWithMetadataRequest(
          [void Function(InstanceRequirementsWithMetadataRequestBuilder)?
              updates]) =>
      (new InstanceRequirementsWithMetadataRequestBuilder()..update(updates))
          ._build();

  _$InstanceRequirementsWithMetadataRequest._(
      {this.architectureTypes,
      this.virtualizationTypes,
      this.instanceRequirements})
      : super._();

  @override
  InstanceRequirementsWithMetadataRequest rebuild(
          void Function(InstanceRequirementsWithMetadataRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceRequirementsWithMetadataRequestBuilder toBuilder() =>
      new InstanceRequirementsWithMetadataRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceRequirementsWithMetadataRequest &&
        architectureTypes == other.architectureTypes &&
        virtualizationTypes == other.virtualizationTypes &&
        instanceRequirements == other.instanceRequirements;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, architectureTypes.hashCode);
    _$hash = $jc(_$hash, virtualizationTypes.hashCode);
    _$hash = $jc(_$hash, instanceRequirements.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceRequirementsWithMetadataRequestBuilder
    implements
        Builder<InstanceRequirementsWithMetadataRequest,
            InstanceRequirementsWithMetadataRequestBuilder> {
  _$InstanceRequirementsWithMetadataRequest? _$v;

  _i2.ListBuilder<ArchitectureType>? _architectureTypes;
  _i2.ListBuilder<ArchitectureType> get architectureTypes =>
      _$this._architectureTypes ??= new _i2.ListBuilder<ArchitectureType>();
  set architectureTypes(_i2.ListBuilder<ArchitectureType>? architectureTypes) =>
      _$this._architectureTypes = architectureTypes;

  _i2.ListBuilder<VirtualizationType>? _virtualizationTypes;
  _i2.ListBuilder<VirtualizationType> get virtualizationTypes =>
      _$this._virtualizationTypes ??= new _i2.ListBuilder<VirtualizationType>();
  set virtualizationTypes(
          _i2.ListBuilder<VirtualizationType>? virtualizationTypes) =>
      _$this._virtualizationTypes = virtualizationTypes;

  InstanceRequirementsRequestBuilder? _instanceRequirements;
  InstanceRequirementsRequestBuilder get instanceRequirements =>
      _$this._instanceRequirements ??= new InstanceRequirementsRequestBuilder();
  set instanceRequirements(
          InstanceRequirementsRequestBuilder? instanceRequirements) =>
      _$this._instanceRequirements = instanceRequirements;

  InstanceRequirementsWithMetadataRequestBuilder();

  InstanceRequirementsWithMetadataRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _architectureTypes = $v.architectureTypes?.toBuilder();
      _virtualizationTypes = $v.virtualizationTypes?.toBuilder();
      _instanceRequirements = $v.instanceRequirements?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceRequirementsWithMetadataRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceRequirementsWithMetadataRequest;
  }

  @override
  void update(
      void Function(InstanceRequirementsWithMetadataRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceRequirementsWithMetadataRequest build() => _build();

  _$InstanceRequirementsWithMetadataRequest _build() {
    _$InstanceRequirementsWithMetadataRequest _$result;
    try {
      _$result = _$v ??
          new _$InstanceRequirementsWithMetadataRequest._(
              architectureTypes: _architectureTypes?.build(),
              virtualizationTypes: _virtualizationTypes?.build(),
              instanceRequirements: _instanceRequirements?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'architectureTypes';
        _architectureTypes?.build();
        _$failedField = 'virtualizationTypes';
        _virtualizationTypes?.build();
        _$failedField = 'instanceRequirements';
        _instanceRequirements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceRequirementsWithMetadataRequest',
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
