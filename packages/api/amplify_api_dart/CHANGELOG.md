## 0.5.11

### Chores
- chore(all): Bump Dart SDK to 3.8.0 ([#6165](https://github.com/aws-amplify/amplify-flutter/pull/6165))
- chore(auth): remove token query parameters ([#6179](https://github.com/aws-amplify/amplify-flutter/pull/6179))

## 0.5.10

### Chores
- chore(all): Bump Dart SDK to 3.7.0 ([#6026](https://github.com/aws-amplify/amplify-flutter/pull/6026))

## 0.5.9

- Minor bug fixes and improvements

## 0.5.8

- Minor bug fixes and improvements

## 0.5.7

- Minor bug fixes and improvements

## 0.5.6

### Features
- feat(api): move App Sync subscription headers to protocol ([#5301](https://github.com/aws-amplify/amplify-flutter/pull/5301))

### Fixes
- fix(api): Reconnect WebSocket when resuming app from a paused state ([#5567](https://github.com/aws-amplify/amplify-flutter/pull/5567))

## 0.5.5

### Fixes
- fix(api): web socket error handling ([#5359](https://github.com/aws-amplify/amplify-flutter/pull/5359))

## 0.5.4

### Fixes
- fix(datastore): Restart Sync Engine when network on/off ([#5218](https://github.com/aws-amplify/amplify-flutter/pull/5218))

### Chores
- chore: bump json_annotation dependency to v4.9

## 0.5.3

- Minor bug fixes and improvements

## 0.5.2

### Features
- feat: Support Amplify Gen 2 outputs ([#5073](https://github.com/aws-amplify/amplify-flutter/pull/5073))

## 0.5.1

- Minor bug fixes and improvements

## 0.5.0

### Breaking Changes
- chore!: Model .fromJson() Refactor ([#4665](https://github.com/aws-amplify/amplify-flutter/pull/4665))
- chore!: Removed deprecated members … ([#4772](https://github.com/aws-amplify/amplify-flutter/pull/4772))
- chore!: remove Model.getId() usages ([#4774](https://github.com/aws-amplify/amplify-flutter/pull/4774))
- feat!: use plugin options for optional plugin parameters ([#4762](https://github.com/aws-amplify/amplify-flutter/pull/4762))

### Features
- feat: Add attributeExists query predicate ([#4134](https://github.com/aws-amplify/amplify-flutter/pull/4134))

## 0.4.1

### Fixes
- fix(api): Paginated GraphQL preserve request params ([#4605](https://github.com/aws-amplify/amplify-flutter/pull/4605))
- fix(api): Web socket decode connection errors ([#4606](https://github.com/aws-amplify/amplify-flutter/pull/4606))

### Features
- feat: update plus plugins version ([#4619](https://github.com/aws-amplify/amplify-flutter/pull/4619))

## 0.4.0

### Features
- feat(api): add copyWith to GraphQLRequest ([#4365](https://github.com/aws-amplify/amplify-flutter/pull/4365))

## 0.3.4

### Fixes
- fix(api): GraphQL Model Helpers support lowercase model names #4143 (#4144)

## 0.3.3

- Minor bug fixes and improvements

## 0.3.2

- Minor bug fixes and improvements

## 0.3.1+1

### Fixes
- fix: removed trailing slash at the end of uri ([#3626](https://github.com/aws-amplify/amplify-flutter/pull/3626))

## 0.3.1

- Minor bug fixes and improvements

## 0.3.0+3

- Minor bug fixes and improvements

## 0.3.0+2

- Minor bug fixes and improvements

## 0.3.0+1

### Fixes
- fix(api): GraphQL subscription with custom domain formats URI correctly ([#3148](https://github.com/aws-amplify/amplify-flutter/pull/3148))

## 0.3.0

### Features
- Dart 3 support (must update Dart SDK constraint to `^3.0.0`)

## 0.2.0+4

### Fixes
- fix(repo): Flutter 3.3 support

## 0.2.0+3

- Minor bug fixes and improvements

## 0.2.0+2

### Fixes
- fix(api): Auth provider registration
- fix(api): Include owner field in selection set ([#2795](https://github.com/aws-amplify/amplify-flutter/pull/2795))
- fix(api): Support model definition target name ([#2814](https://github.com/aws-amplify/amplify-flutter/pull/2814))
- fix(api): Supported protocols should be set on base client only

## 0.2.0+1

- Minor bug fixes and improvements

## 0.2.0

### Fixes
- fix(api): early call of Amplify creates wrong instance of AmplifyClass
- fix(api): write null values in ModelMutations.create() unless owner field ([#2679](https://github.com/aws-amplify/amplify-flutter/pull/2679))

### Breaking Changes
- feat(api)!: custom primary key support for GraphQL model helpers ([#2606](https://github.com/aws-amplify/amplify-flutter/pull/2606))

### Features
- feat(api): GraphQL Subscription Where Filter ([#2650](https://github.com/aws-amplify/amplify-flutter/pull/2650))

## 0.1.0+3

### Fixes
- fix(api): include parent IDs in selection set for model helpers ([#2655](https://github.com/aws-amplify/amplify-flutter/pull/2655))

## 0.1.0+2

### Fixes
- fix(api): Web Socket Multiple Requests Synchronously ([#2567](https://github.com/aws-amplify/amplify-flutter/pull/2567))

## 0.1.0+1

### Fixes
- fix(api): model helpers use targetNames in schemas with CPK enabled ([#2559](https://github.com/aws-amplify/amplify-flutter/pull/2559))

## 0.1.0

- Initial version.
