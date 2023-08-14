// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_restore_image_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRestoreImageTaskRequest extends CreateRestoreImageTaskRequest {
  @override
  final String? bucket;
  @override
  final String? objectKey;
  @override
  final String? name;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateRestoreImageTaskRequest(
          [void Function(CreateRestoreImageTaskRequestBuilder)? updates]) =>
      (new CreateRestoreImageTaskRequestBuilder()..update(updates))._build();

  _$CreateRestoreImageTaskRequest._(
      {this.bucket,
      this.objectKey,
      this.name,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateRestoreImageTaskRequest', 'dryRun');
  }

  @override
  CreateRestoreImageTaskRequest rebuild(
          void Function(CreateRestoreImageTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRestoreImageTaskRequestBuilder toBuilder() =>
      new CreateRestoreImageTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRestoreImageTaskRequest &&
        bucket == other.bucket &&
        objectKey == other.objectKey &&
        name == other.name &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, objectKey.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRestoreImageTaskRequestBuilder
    implements
        Builder<CreateRestoreImageTaskRequest,
            CreateRestoreImageTaskRequestBuilder> {
  _$CreateRestoreImageTaskRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _objectKey;
  String? get objectKey => _$this._objectKey;
  set objectKey(String? objectKey) => _$this._objectKey = objectKey;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateRestoreImageTaskRequestBuilder() {
    CreateRestoreImageTaskRequest._init(this);
  }

  CreateRestoreImageTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _objectKey = $v.objectKey;
      _name = $v.name;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRestoreImageTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRestoreImageTaskRequest;
  }

  @override
  void update(void Function(CreateRestoreImageTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRestoreImageTaskRequest build() => _build();

  _$CreateRestoreImageTaskRequest _build() {
    _$CreateRestoreImageTaskRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateRestoreImageTaskRequest._(
              bucket: bucket,
              objectKey: objectKey,
              name: name,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateRestoreImageTaskRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateRestoreImageTaskRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
