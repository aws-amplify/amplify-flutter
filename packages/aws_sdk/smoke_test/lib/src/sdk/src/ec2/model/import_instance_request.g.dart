// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_instance_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportInstanceRequest extends ImportInstanceRequest {
  @override
  final String? description;
  @override
  final _i3.BuiltList<DiskImage>? diskImages;
  @override
  final bool dryRun;
  @override
  final ImportInstanceLaunchSpecification? launchSpecification;
  @override
  final PlatformValues? platform;

  factory _$ImportInstanceRequest(
          [void Function(ImportInstanceRequestBuilder)? updates]) =>
      (new ImportInstanceRequestBuilder()..update(updates))._build();

  _$ImportInstanceRequest._(
      {this.description,
      this.diskImages,
      required this.dryRun,
      this.launchSpecification,
      this.platform})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ImportInstanceRequest', 'dryRun');
  }

  @override
  ImportInstanceRequest rebuild(
          void Function(ImportInstanceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportInstanceRequestBuilder toBuilder() =>
      new ImportInstanceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportInstanceRequest &&
        description == other.description &&
        diskImages == other.diskImages &&
        dryRun == other.dryRun &&
        launchSpecification == other.launchSpecification &&
        platform == other.platform;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, diskImages.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, launchSpecification.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportInstanceRequestBuilder
    implements Builder<ImportInstanceRequest, ImportInstanceRequestBuilder> {
  _$ImportInstanceRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<DiskImage>? _diskImages;
  _i3.ListBuilder<DiskImage> get diskImages =>
      _$this._diskImages ??= new _i3.ListBuilder<DiskImage>();
  set diskImages(_i3.ListBuilder<DiskImage>? diskImages) =>
      _$this._diskImages = diskImages;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ImportInstanceLaunchSpecificationBuilder? _launchSpecification;
  ImportInstanceLaunchSpecificationBuilder get launchSpecification =>
      _$this._launchSpecification ??=
          new ImportInstanceLaunchSpecificationBuilder();
  set launchSpecification(
          ImportInstanceLaunchSpecificationBuilder? launchSpecification) =>
      _$this._launchSpecification = launchSpecification;

  PlatformValues? _platform;
  PlatformValues? get platform => _$this._platform;
  set platform(PlatformValues? platform) => _$this._platform = platform;

  ImportInstanceRequestBuilder() {
    ImportInstanceRequest._init(this);
  }

  ImportInstanceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _diskImages = $v.diskImages?.toBuilder();
      _dryRun = $v.dryRun;
      _launchSpecification = $v.launchSpecification?.toBuilder();
      _platform = $v.platform;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportInstanceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportInstanceRequest;
  }

  @override
  void update(void Function(ImportInstanceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportInstanceRequest build() => _build();

  _$ImportInstanceRequest _build() {
    _$ImportInstanceRequest _$result;
    try {
      _$result = _$v ??
          new _$ImportInstanceRequest._(
              description: description,
              diskImages: _diskImages?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ImportInstanceRequest', 'dryRun'),
              launchSpecification: _launchSpecification?.build(),
              platform: platform);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'diskImages';
        _diskImages?.build();

        _$failedField = 'launchSpecification';
        _launchSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportInstanceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
