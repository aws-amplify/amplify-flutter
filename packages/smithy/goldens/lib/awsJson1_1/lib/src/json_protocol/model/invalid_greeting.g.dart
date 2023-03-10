// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.invalid_greeting;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidGreeting extends InvalidGreeting {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidGreeting([void Function(InvalidGreetingBuilder)? updates]) =>
      (new InvalidGreetingBuilder()..update(updates))._build();

  _$InvalidGreeting._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidGreeting rebuild(void Function(InvalidGreetingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidGreetingBuilder toBuilder() =>
      new InvalidGreetingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidGreeting && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidGreetingBuilder
    implements Builder<InvalidGreeting, InvalidGreetingBuilder> {
  _$InvalidGreeting? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidGreetingBuilder() {
    InvalidGreeting._init(this);
  }

  InvalidGreetingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidGreeting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidGreeting;
  }

  @override
  void update(void Function(InvalidGreetingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidGreeting build() => _build();

  _$InvalidGreeting _build() {
    final _$result = _$v ??
        new _$InvalidGreeting._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
