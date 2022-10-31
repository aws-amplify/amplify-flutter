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
    return $jf($jc($jc($jc(0, createdDate.hashCode), description.hashCode),
        version.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
