// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_instance_export_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInstanceExportTaskRequest
    extends CreateInstanceExportTaskRequest {
  @override
  final String? description;
  @override
  final ExportToS3TaskSpecification? exportToS3Task;
  @override
  final String? instanceId;
  @override
  final ExportEnvironment? targetEnvironment;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateInstanceExportTaskRequest(
          [void Function(CreateInstanceExportTaskRequestBuilder)? updates]) =>
      (new CreateInstanceExportTaskRequestBuilder()..update(updates))._build();

  _$CreateInstanceExportTaskRequest._(
      {this.description,
      this.exportToS3Task,
      this.instanceId,
      this.targetEnvironment,
      this.tagSpecifications})
      : super._();

  @override
  CreateInstanceExportTaskRequest rebuild(
          void Function(CreateInstanceExportTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInstanceExportTaskRequestBuilder toBuilder() =>
      new CreateInstanceExportTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInstanceExportTaskRequest &&
        description == other.description &&
        exportToS3Task == other.exportToS3Task &&
        instanceId == other.instanceId &&
        targetEnvironment == other.targetEnvironment &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, exportToS3Task.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, targetEnvironment.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateInstanceExportTaskRequestBuilder
    implements
        Builder<CreateInstanceExportTaskRequest,
            CreateInstanceExportTaskRequestBuilder> {
  _$CreateInstanceExportTaskRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ExportToS3TaskSpecificationBuilder? _exportToS3Task;
  ExportToS3TaskSpecificationBuilder get exportToS3Task =>
      _$this._exportToS3Task ??= new ExportToS3TaskSpecificationBuilder();
  set exportToS3Task(ExportToS3TaskSpecificationBuilder? exportToS3Task) =>
      _$this._exportToS3Task = exportToS3Task;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  ExportEnvironment? _targetEnvironment;
  ExportEnvironment? get targetEnvironment => _$this._targetEnvironment;
  set targetEnvironment(ExportEnvironment? targetEnvironment) =>
      _$this._targetEnvironment = targetEnvironment;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateInstanceExportTaskRequestBuilder();

  CreateInstanceExportTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _exportToS3Task = $v.exportToS3Task?.toBuilder();
      _instanceId = $v.instanceId;
      _targetEnvironment = $v.targetEnvironment;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInstanceExportTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInstanceExportTaskRequest;
  }

  @override
  void update(void Function(CreateInstanceExportTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInstanceExportTaskRequest build() => _build();

  _$CreateInstanceExportTaskRequest _build() {
    _$CreateInstanceExportTaskRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateInstanceExportTaskRequest._(
              description: description,
              exportToS3Task: _exportToS3Task?.build(),
              instanceId: instanceId,
              targetEnvironment: targetEnvironment,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exportToS3Task';
        _exportToS3Task?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInstanceExportTaskRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
