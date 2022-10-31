// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.export_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportResponse extends ExportResponse {
  @override
  final _i3.Uint8List? body;
  @override
  final String? contentDisposition;
  @override
  final String? contentType;

  factory _$ExportResponse([void Function(ExportResponseBuilder)? updates]) =>
      (new ExportResponseBuilder()..update(updates))._build();

  _$ExportResponse._({this.body, this.contentDisposition, this.contentType})
      : super._();

  @override
  ExportResponse rebuild(void Function(ExportResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportResponseBuilder toBuilder() =>
      new ExportResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportResponse &&
        body == other.body &&
        contentDisposition == other.contentDisposition &&
        contentType == other.contentType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, body.hashCode), contentDisposition.hashCode),
        contentType.hashCode));
  }
}

class ExportResponseBuilder
    implements Builder<ExportResponse, ExportResponseBuilder> {
  _$ExportResponse? _$v;

  _i3.Uint8List? _body;
  _i3.Uint8List? get body => _$this._body;
  set body(_i3.Uint8List? body) => _$this._body = body;

  String? _contentDisposition;
  String? get contentDisposition => _$this._contentDisposition;
  set contentDisposition(String? contentDisposition) =>
      _$this._contentDisposition = contentDisposition;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  ExportResponseBuilder() {
    ExportResponse._init(this);
  }

  ExportResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _contentDisposition = $v.contentDisposition;
      _contentType = $v.contentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportResponse;
  }

  @override
  void update(void Function(ExportResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportResponse build() => _build();

  _$ExportResponse _build() {
    final _$result = _$v ??
        new _$ExportResponse._(
            body: body,
            contentDisposition: contentDisposition,
            contentType: contentType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
