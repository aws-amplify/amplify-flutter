// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_version.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateVersion extends LaunchTemplateVersion {
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final _i2.Int64 versionNumber;
  @override
  final String? versionDescription;
  @override
  final DateTime? createTime;
  @override
  final String? createdBy;
  @override
  final bool defaultVersion;
  @override
  final ResponseLaunchTemplateData? launchTemplateData;

  factory _$LaunchTemplateVersion(
          [void Function(LaunchTemplateVersionBuilder)? updates]) =>
      (new LaunchTemplateVersionBuilder()..update(updates))._build();

  _$LaunchTemplateVersion._(
      {this.launchTemplateId,
      this.launchTemplateName,
      required this.versionNumber,
      this.versionDescription,
      this.createTime,
      this.createdBy,
      required this.defaultVersion,
      this.launchTemplateData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        versionNumber, r'LaunchTemplateVersion', 'versionNumber');
    BuiltValueNullFieldError.checkNotNull(
        defaultVersion, r'LaunchTemplateVersion', 'defaultVersion');
  }

  @override
  LaunchTemplateVersion rebuild(
          void Function(LaunchTemplateVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateVersionBuilder toBuilder() =>
      new LaunchTemplateVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateVersion &&
        launchTemplateId == other.launchTemplateId &&
        launchTemplateName == other.launchTemplateName &&
        versionNumber == other.versionNumber &&
        versionDescription == other.versionDescription &&
        createTime == other.createTime &&
        createdBy == other.createdBy &&
        defaultVersion == other.defaultVersion &&
        launchTemplateData == other.launchTemplateData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateId.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jc(_$hash, versionNumber.hashCode);
    _$hash = $jc(_$hash, versionDescription.hashCode);
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, defaultVersion.hashCode);
    _$hash = $jc(_$hash, launchTemplateData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateVersionBuilder
    implements Builder<LaunchTemplateVersion, LaunchTemplateVersionBuilder> {
  _$LaunchTemplateVersion? _$v;

  String? _launchTemplateId;
  String? get launchTemplateId => _$this._launchTemplateId;
  set launchTemplateId(String? launchTemplateId) =>
      _$this._launchTemplateId = launchTemplateId;

  String? _launchTemplateName;
  String? get launchTemplateName => _$this._launchTemplateName;
  set launchTemplateName(String? launchTemplateName) =>
      _$this._launchTemplateName = launchTemplateName;

  _i2.Int64? _versionNumber;
  _i2.Int64? get versionNumber => _$this._versionNumber;
  set versionNumber(_i2.Int64? versionNumber) =>
      _$this._versionNumber = versionNumber;

  String? _versionDescription;
  String? get versionDescription => _$this._versionDescription;
  set versionDescription(String? versionDescription) =>
      _$this._versionDescription = versionDescription;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  bool? _defaultVersion;
  bool? get defaultVersion => _$this._defaultVersion;
  set defaultVersion(bool? defaultVersion) =>
      _$this._defaultVersion = defaultVersion;

  ResponseLaunchTemplateDataBuilder? _launchTemplateData;
  ResponseLaunchTemplateDataBuilder get launchTemplateData =>
      _$this._launchTemplateData ??= new ResponseLaunchTemplateDataBuilder();
  set launchTemplateData(
          ResponseLaunchTemplateDataBuilder? launchTemplateData) =>
      _$this._launchTemplateData = launchTemplateData;

  LaunchTemplateVersionBuilder() {
    LaunchTemplateVersion._init(this);
  }

  LaunchTemplateVersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateId = $v.launchTemplateId;
      _launchTemplateName = $v.launchTemplateName;
      _versionNumber = $v.versionNumber;
      _versionDescription = $v.versionDescription;
      _createTime = $v.createTime;
      _createdBy = $v.createdBy;
      _defaultVersion = $v.defaultVersion;
      _launchTemplateData = $v.launchTemplateData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateVersion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateVersion;
  }

  @override
  void update(void Function(LaunchTemplateVersionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateVersion build() => _build();

  _$LaunchTemplateVersion _build() {
    _$LaunchTemplateVersion _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateVersion._(
              launchTemplateId: launchTemplateId,
              launchTemplateName: launchTemplateName,
              versionNumber: BuiltValueNullFieldError.checkNotNull(
                  versionNumber, r'LaunchTemplateVersion', 'versionNumber'),
              versionDescription: versionDescription,
              createTime: createTime,
              createdBy: createdBy,
              defaultVersion: BuiltValueNullFieldError.checkNotNull(
                  defaultVersion, r'LaunchTemplateVersion', 'defaultVersion'),
              launchTemplateData: _launchTemplateData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateData';
        _launchTemplateData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplateVersion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
