// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_internet_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInternetGatewayResult extends CreateInternetGatewayResult {
  @override
  final InternetGateway? internetGateway;

  factory _$CreateInternetGatewayResult(
          [void Function(CreateInternetGatewayResultBuilder)? updates]) =>
      (new CreateInternetGatewayResultBuilder()..update(updates))._build();

  _$CreateInternetGatewayResult._({this.internetGateway}) : super._();

  @override
  CreateInternetGatewayResult rebuild(
          void Function(CreateInternetGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInternetGatewayResultBuilder toBuilder() =>
      new CreateInternetGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInternetGatewayResult &&
        internetGateway == other.internetGateway;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, internetGateway.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateInternetGatewayResultBuilder
    implements
        Builder<CreateInternetGatewayResult,
            CreateInternetGatewayResultBuilder> {
  _$CreateInternetGatewayResult? _$v;

  InternetGatewayBuilder? _internetGateway;
  InternetGatewayBuilder get internetGateway =>
      _$this._internetGateway ??= new InternetGatewayBuilder();
  set internetGateway(InternetGatewayBuilder? internetGateway) =>
      _$this._internetGateway = internetGateway;

  CreateInternetGatewayResultBuilder();

  CreateInternetGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _internetGateway = $v.internetGateway?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInternetGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInternetGatewayResult;
  }

  @override
  void update(void Function(CreateInternetGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInternetGatewayResult build() => _build();

  _$CreateInternetGatewayResult _build() {
    _$CreateInternetGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$CreateInternetGatewayResult._(
              internetGateway: _internetGateway?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'internetGateway';
        _internetGateway?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInternetGatewayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
