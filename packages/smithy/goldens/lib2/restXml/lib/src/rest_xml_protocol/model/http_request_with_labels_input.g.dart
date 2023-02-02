// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.http_request_with_labels_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequestWithLabelsInput extends HttpRequestWithLabelsInput {
  @override
  final bool boolean;
  @override
  final double double_;
  @override
  final double float;
  @override
  final int integer;
  @override
  final _i3.Int64 long;
  @override
  final int short;
  @override
  final String string;
  @override
  final DateTime timestamp;

  factory _$HttpRequestWithLabelsInput(
          [void Function(HttpRequestWithLabelsInputBuilder)? updates]) =>
      (new HttpRequestWithLabelsInputBuilder()..update(updates))._build();

  _$HttpRequestWithLabelsInput._(
      {required this.boolean,
      required this.double_,
      required this.float,
      required this.integer,
      required this.long,
      required this.short,
      required this.string,
      required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        boolean, r'HttpRequestWithLabelsInput', 'boolean');
    BuiltValueNullFieldError.checkNotNull(
        double_, r'HttpRequestWithLabelsInput', 'double_');
    BuiltValueNullFieldError.checkNotNull(
        float, r'HttpRequestWithLabelsInput', 'float');
    BuiltValueNullFieldError.checkNotNull(
        integer, r'HttpRequestWithLabelsInput', 'integer');
    BuiltValueNullFieldError.checkNotNull(
        long, r'HttpRequestWithLabelsInput', 'long');
    BuiltValueNullFieldError.checkNotNull(
        short, r'HttpRequestWithLabelsInput', 'short');
    BuiltValueNullFieldError.checkNotNull(
        string, r'HttpRequestWithLabelsInput', 'string');
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'HttpRequestWithLabelsInput', 'timestamp');
  }

  @override
  HttpRequestWithLabelsInput rebuild(
          void Function(HttpRequestWithLabelsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithLabelsInputBuilder toBuilder() =>
      new HttpRequestWithLabelsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithLabelsInput &&
        boolean == other.boolean &&
        double_ == other.double_ &&
        float == other.float &&
        integer == other.integer &&
        long == other.long &&
        short == other.short &&
        string == other.string &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, boolean.hashCode);
    _$hash = $jc(_$hash, double_.hashCode);
    _$hash = $jc(_$hash, float.hashCode);
    _$hash = $jc(_$hash, integer.hashCode);
    _$hash = $jc(_$hash, long.hashCode);
    _$hash = $jc(_$hash, short.hashCode);
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpRequestWithLabelsInputBuilder
    implements
        Builder<HttpRequestWithLabelsInput, HttpRequestWithLabelsInputBuilder> {
  _$HttpRequestWithLabelsInput? _$v;

  bool? _boolean;
  bool? get boolean => _$this._boolean;
  set boolean(bool? boolean) => _$this._boolean = boolean;

  double? _double_;
  double? get double_ => _$this._double_;
  set double_(double? double_) => _$this._double_ = double_;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  int? _integer;
  int? get integer => _$this._integer;
  set integer(int? integer) => _$this._integer = integer;

  _i3.Int64? _long;
  _i3.Int64? get long => _$this._long;
  set long(_i3.Int64? long) => _$this._long = long;

  int? _short;
  int? get short => _$this._short;
  set short(int? short) => _$this._short = short;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  HttpRequestWithLabelsInputBuilder() {
    HttpRequestWithLabelsInput._init(this);
  }

  HttpRequestWithLabelsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _boolean = $v.boolean;
      _double_ = $v.double_;
      _float = $v.float;
      _integer = $v.integer;
      _long = $v.long;
      _short = $v.short;
      _string = $v.string;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRequestWithLabelsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithLabelsInput;
  }

  @override
  void update(void Function(HttpRequestWithLabelsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpRequestWithLabelsInput build() => _build();

  _$HttpRequestWithLabelsInput _build() {
    final _$result = _$v ??
        new _$HttpRequestWithLabelsInput._(
            boolean: BuiltValueNullFieldError.checkNotNull(
                boolean, r'HttpRequestWithLabelsInput', 'boolean'),
            double_: BuiltValueNullFieldError.checkNotNull(
                double_, r'HttpRequestWithLabelsInput', 'double_'),
            float: BuiltValueNullFieldError.checkNotNull(
                float, r'HttpRequestWithLabelsInput', 'float'),
            integer: BuiltValueNullFieldError.checkNotNull(
                integer, r'HttpRequestWithLabelsInput', 'integer'),
            long: BuiltValueNullFieldError.checkNotNull(
                long, r'HttpRequestWithLabelsInput', 'long'),
            short: BuiltValueNullFieldError.checkNotNull(
                short, r'HttpRequestWithLabelsInput', 'short'),
            string: BuiltValueNullFieldError.checkNotNull(
                string, r'HttpRequestWithLabelsInput', 'string'),
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'HttpRequestWithLabelsInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$HttpRequestWithLabelsInputPayload
    extends HttpRequestWithLabelsInputPayload {
  factory _$HttpRequestWithLabelsInputPayload(
          [void Function(HttpRequestWithLabelsInputPayloadBuilder)? updates]) =>
      (new HttpRequestWithLabelsInputPayloadBuilder()..update(updates))
          ._build();

  _$HttpRequestWithLabelsInputPayload._() : super._();

  @override
  HttpRequestWithLabelsInputPayload rebuild(
          void Function(HttpRequestWithLabelsInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithLabelsInputPayloadBuilder toBuilder() =>
      new HttpRequestWithLabelsInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithLabelsInputPayload;
  }

  @override
  int get hashCode {
    return 251815434;
  }
}

class HttpRequestWithLabelsInputPayloadBuilder
    implements
        Builder<HttpRequestWithLabelsInputPayload,
            HttpRequestWithLabelsInputPayloadBuilder> {
  _$HttpRequestWithLabelsInputPayload? _$v;

  HttpRequestWithLabelsInputPayloadBuilder() {
    HttpRequestWithLabelsInputPayload._init(this);
  }

  @override
  void replace(HttpRequestWithLabelsInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithLabelsInputPayload;
  }

  @override
  void update(
      void Function(HttpRequestWithLabelsInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpRequestWithLabelsInputPayload build() => _build();

  _$HttpRequestWithLabelsInputPayload _build() {
    final _$result = _$v ?? new _$HttpRequestWithLabelsInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
