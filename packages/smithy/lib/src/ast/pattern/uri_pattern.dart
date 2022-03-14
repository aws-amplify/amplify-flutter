import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'uri_pattern.g.dart';

@JsonSerializable()
class UriPattern extends SmithyPattern {
  UriPattern({
    required String pattern,
    required List<Segment> segments,
    required this.queryLiterals,
  }) : super(pattern, segments);

  factory UriPattern.parse(String uri) {
    if (uri.endsWith('?')) {
      throw InvalidUriPatternError(
          'URI patterns must not end with "?". Found ' + uri);
    } else if (!uri.startsWith('/')) {
      throw InvalidUriPatternError(
          'URI pattern must start with "/". Found ' + uri);
    } else if (uri.contains('#')) {
      throw InvalidUriPatternError(
          'URI pattern must not contain a fragment. Found ' + uri);
    }

    final parts = uri.split('?');
    final unparsedSegments = parts[0].split('/');
    final segments = <Segment>[];

    // Skip the first '/' segment, and thus assume offset of 1.
    for (int i = 1; i < unparsedSegments.length; i++) {
      String segment = unparsedSegments[i];
      if (i == unparsedSegments.length - 1 && segment.isEmpty) {
        break;
      }
      segments.add(Segment.parse(segment));
    }

    final Map<String, String> queryLiterals = {};
    // Parse the query literals outside of the general pattern
    if (parts.length == 2) {
      if (parts[1].contains('{') || parts[1].contains('}')) {
        throw InvalidUriPatternError(
            'URI labels must not appear in the query string. Found ' + uri);
      }
      for (final kvp in parts[1].split('&')) {
        final parameterParts = kvp.split('=');
        String actualKey = parameterParts[0];
        if (queryLiterals.containsKey(actualKey)) {
          throw InvalidUriPatternError(
              'Literal query parameters must not be repeated: ' + uri);
        }
        queryLiterals[actualKey] =
            parameterParts.length == 2 ? parameterParts[1] : '';
      }
    }

    return UriPattern(
      pattern: uri,
      segments: segments,
      queryLiterals: queryLiterals,
    );
  }

  factory UriPattern.fromJson(Map<String, Object?> json) =>
      _$UriPatternFromJson(json);

  final Map<String, String> queryLiterals;

  @override
  List<Object> get props => [
        queryLiterals,
        ...super.props,
      ];

  Map<String, Object?> toJson() => _$UriPatternToJson(this);
}
