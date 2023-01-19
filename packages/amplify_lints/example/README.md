# amplify_lints

This package contains the lint rules enforced in amplify Dart & Flutter projects. To use consider the following:

- Add the `amplify_lints` package to your project: 
   - `$ flutter pub add --dev amplify_lints`
- Include amplify_lints package in your `analysis_options.yaml`:
```yaml
include: package:amplify_lints/library.yaml
```

- Lint errors should be visible in your editor 
- Run analysis with lint rules:
    - Dart packages: `$ dart analyze`
    - Flutter packages: `$ flutter analyze`
