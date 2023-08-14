// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplate extends LaunchTemplate {
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final DateTime? createTime;
  @override
  final String? createdBy;
  @override
  final _i2.Int64 defaultVersionNumber;
  @override
  final _i2.Int64 latestVersionNumber;
  @override
  final _i3.BuiltList<Tag>? tags;

  factory _$LaunchTemplate([void Function(LaunchTemplateBuilder)? updates]) =>
      (new LaunchTemplateBuilder()..update(updates))._build();

  _$LaunchTemplate._(
      {this.launchTemplateId,
      this.launchTemplateName,
      this.createTime,
      this.createdBy,
      required this.defaultVersionNumber,
      required this.latestVersionNumber,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        defaultVersionNumber, r'LaunchTemplate', 'defaultVersionNumber');
    BuiltValueNullFieldError.checkNotNull(
        latestVersionNumber, r'LaunchTemplate', 'latestVersionNumber');
  }

  @override
  LaunchTemplate rebuild(void Function(LaunchTemplateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateBuilder toBuilder() =>
      new LaunchTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplate &&
        launchTemplateId == other.launchTemplateId &&
        launchTemplateName == other.launchTemplateName &&
        createTime == other.createTime &&
        createdBy == other.createdBy &&
        defaultVersionNumber == other.defaultVersionNumber &&
        latestVersionNumber == other.latestVersionNumber &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateId.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, defaultVersionNumber.hashCode);
    _$hash = $jc(_$hash, latestVersionNumber.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateBuilder
    implements Builder<LaunchTemplate, LaunchTemplateBuilder> {
  _$LaunchTemplate? _$v;

  String? _launchTemplateId;
  String? get launchTemplateId => _$this._launchTemplateId;
  set launchTemplateId(String? launchTemplateId) =>
      _$this._launchTemplateId = launchTemplateId;

  String? _launchTemplateName;
  String? get launchTemplateName => _$this._launchTemplateName;
  set launchTemplateName(String? launchTemplateName) =>
      _$this._launchTemplateName = launchTemplateName;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  _i2.Int64? _defaultVersionNumber;
  _i2.Int64? get defaultVersionNumber => _$this._defaultVersionNumber;
  set defaultVersionNumber(_i2.Int64? defaultVersionNumber) =>
      _$this._defaultVersionNumber = defaultVersionNumber;

  _i2.Int64? _latestVersionNumber;
  _i2.Int64? get latestVersionNumber => _$this._latestVersionNumber;
  set latestVersionNumber(_i2.Int64? latestVersionNumber) =>
      _$this._latestVersionNumber = latestVersionNumber;

  _i3.ListBuilder<Tag>? _tags;
  _i3.ListBuilder<Tag> get tags => _$this._tags ??= new _i3.ListBuilder<Tag>();
  set tags(_i3.ListBuilder<Tag>? tags) => _$this._tags = tags;

  LaunchTemplateBuilder() {
    LaunchTemplate._init(this);
  }

  LaunchTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateId = $v.launchTemplateId;
      _launchTemplateName = $v.launchTemplateName;
      _createTime = $v.createTime;
      _createdBy = $v.createdBy;
      _defaultVersionNumber = $v.defaultVersionNumber;
      _latestVersionNumber = $v.latestVersionNumber;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplate;
  }

  @override
  void update(void Function(LaunchTemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplate build() => _build();

  _$LaunchTemplate _build() {
    _$LaunchTemplate _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplate._(
              launchTemplateId: launchTemplateId,
              launchTemplateName: launchTemplateName,
              createTime: createTime,
              createdBy: createdBy,
              defaultVersionNumber: BuiltValueNullFieldError.checkNotNull(
                  defaultVersionNumber,
                  r'LaunchTemplate',
                  'defaultVersionNumber'),
              latestVersionNumber: BuiltValueNullFieldError.checkNotNull(
                  latestVersionNumber,
                  r'LaunchTemplate',
                  'latestVersionNumber'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
