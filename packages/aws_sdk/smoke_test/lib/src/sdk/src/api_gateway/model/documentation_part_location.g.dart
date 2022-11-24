// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.documentation_part_location;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentationPartLocation extends DocumentationPartLocation {
  @override
  final String? method;
  @override
  final String? name;
  @override
  final String? path;
  @override
  final String? statusCode;
  @override
  final _i2.DocumentationPartType type;

  factory _$DocumentationPartLocation(
          [void Function(DocumentationPartLocationBuilder)? updates]) =>
      (new DocumentationPartLocationBuilder()..update(updates))._build();

  _$DocumentationPartLocation._(
      {this.method, this.name, this.path, this.statusCode, required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'DocumentationPartLocation', 'type');
  }

  @override
  DocumentationPartLocation rebuild(
          void Function(DocumentationPartLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentationPartLocationBuilder toBuilder() =>
      new DocumentationPartLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentationPartLocation &&
        method == other.method &&
        name == other.name &&
        path == other.path &&
        statusCode == other.statusCode &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, method.hashCode), name.hashCode), path.hashCode),
            statusCode.hashCode),
        type.hashCode));
  }
}

class DocumentationPartLocationBuilder
    implements
        Builder<DocumentationPartLocation, DocumentationPartLocationBuilder> {
  _$DocumentationPartLocation? _$v;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  _i2.DocumentationPartType? _type;
  _i2.DocumentationPartType? get type => _$this._type;
  set type(_i2.DocumentationPartType? type) => _$this._type = type;

  DocumentationPartLocationBuilder() {
    DocumentationPartLocation._init(this);
  }

  DocumentationPartLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _method = $v.method;
      _name = $v.name;
      _path = $v.path;
      _statusCode = $v.statusCode;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentationPartLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentationPartLocation;
  }

  @override
  void update(void Function(DocumentationPartLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentationPartLocation build() => _build();

  _$DocumentationPartLocation _build() {
    final _$result = _$v ??
        new _$DocumentationPartLocation._(
            method: method,
            name: name,
            path: path,
            statusCode: statusCode,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'DocumentationPartLocation', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
