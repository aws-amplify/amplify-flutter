// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_version.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyVersion extends PolicyVersion {
  @override
  final String? document;
  @override
  final String? versionId;
  @override
  final bool isDefaultVersion;
  @override
  final DateTime? createDate;

  factory _$PolicyVersion([void Function(PolicyVersionBuilder)? updates]) =>
      (new PolicyVersionBuilder()..update(updates))._build();

  _$PolicyVersion._(
      {this.document,
      this.versionId,
      required this.isDefaultVersion,
      this.createDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isDefaultVersion, r'PolicyVersion', 'isDefaultVersion');
  }

  @override
  PolicyVersion rebuild(void Function(PolicyVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyVersionBuilder toBuilder() => new PolicyVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyVersion &&
        document == other.document &&
        versionId == other.versionId &&
        isDefaultVersion == other.isDefaultVersion &&
        createDate == other.createDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, isDefaultVersion.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PolicyVersionBuilder
    implements Builder<PolicyVersion, PolicyVersionBuilder> {
  _$PolicyVersion? _$v;

  String? _document;
  String? get document => _$this._document;
  set document(String? document) => _$this._document = document;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  bool? _isDefaultVersion;
  bool? get isDefaultVersion => _$this._isDefaultVersion;
  set isDefaultVersion(bool? isDefaultVersion) =>
      _$this._isDefaultVersion = isDefaultVersion;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  PolicyVersionBuilder() {
    PolicyVersion._init(this);
  }

  PolicyVersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _document = $v.document;
      _versionId = $v.versionId;
      _isDefaultVersion = $v.isDefaultVersion;
      _createDate = $v.createDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyVersion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyVersion;
  }

  @override
  void update(void Function(PolicyVersionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyVersion build() => _build();

  _$PolicyVersion _build() {
    final _$result = _$v ??
        new _$PolicyVersion._(
            document: document,
            versionId: versionId,
            isDefaultVersion: BuiltValueNullFieldError.checkNotNull(
                isDefaultVersion, r'PolicyVersion', 'isDefaultVersion'),
            createDate: createDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
