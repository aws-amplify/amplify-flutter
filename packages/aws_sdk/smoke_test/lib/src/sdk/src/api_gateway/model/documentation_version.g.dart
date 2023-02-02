// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.documentation_version;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentationVersion extends DocumentationVersion {
  @override
  final DateTime? createdDate;
  @override
  final String? description;
  @override
  final String? version;

  factory _$DocumentationVersion(
          [void Function(DocumentationVersionBuilder)? updates]) =>
      (new DocumentationVersionBuilder()..update(updates))._build();

  _$DocumentationVersion._({this.createdDate, this.description, this.version})
      : super._();

  @override
  DocumentationVersion rebuild(
          void Function(DocumentationVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentationVersionBuilder toBuilder() =>
      new DocumentationVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentationVersion &&
        createdDate == other.createdDate &&
        description == other.description &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DocumentationVersionBuilder
    implements Builder<DocumentationVersion, DocumentationVersionBuilder> {
  _$DocumentationVersion? _$v;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  DocumentationVersionBuilder() {
    DocumentationVersion._init(this);
  }

  DocumentationVersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdDate = $v.createdDate;
      _description = $v.description;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentationVersion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentationVersion;
  }

  @override
  void update(void Function(DocumentationVersionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentationVersion build() => _build();

  _$DocumentationVersion _build() {
    final _$result = _$v ??
        new _$DocumentationVersion._(
            createdDate: createdDate,
            description: description,
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
