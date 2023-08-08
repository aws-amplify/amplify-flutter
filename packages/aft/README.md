# Amplify Flutter Repo Tool (aft)

A CLI tool for managing the Amplify Flutter repository.

## Commands

- `bootstrap`/`bs`: Sets up repo for development work
- `clean`: Cleans temporary files and build artifacts for all packages
- `create`: Creates new Amplify packages and plugins
- `constraints`: Manages constraints of all packages in the repo
  - `check`: Checks constraints against `aft.yaml`, for use in CI
  - `update`: Updates constraints in `aft.yaml` to match latest in `pub.dev`
  - `apply`: Applies constraints in `aft.yaml` to all repo packages
  - `pub-verify`: Verifies Amplify constraints against the top pub.dev packages
- `docs`: Develop package documentation
  - `build`: Builds documentation for packages
  - `serve`: Serves package documentation for local development
- `exec`: Execute a command in all repo packages
- `generate`: Generates various repo items
  - `workflows`: Generates GitHub actions workflows for all packages in the repo
- `link`: Links all packages together using `pubspec_overrides.yaml`
- `list`: Lists all packages in the repo
- `publish`: Runs `dart pub publish`/`flutter pub publish` for all packages which need publishing
- `run`: Run a script defined in `aft.yaml`
- `version-bump`: Bumps version using git history

A full list of available commands and options can be found by running `aft --help`.

## Development

When developing `aft`, some commands will require the `libgit2` library for interacting with the repo's commit history. This library can be installed with the following commands:

```sh
# macOS
$ brew install libgit2
```

```sh
# Linux
$ sudo apt-get install libgit2-dev
```

To activate and run the local `aft` package:

```sh
$ dart pub global activate -spath packages/aft
$ aft --help
```

> Note: If you encounter a dependency error for libgit2dart, run `git submodule update --init`.

Make sure the Dart pub cache is in your PATH to run `aft` as a global executable after activating. See [here](https://dart.dev/tools/pub/cmd/pub-global#running-a-script-from-your-path) for more information.

### Writing Scripts

`aft` supports running named scripts using the `aft run` command. Scripts are defined in the `scripts` section of the `aft.yaml` and consist of two parts:

- `from`: defines where the script will run
- `run`: defines the script which will run

#### Package Selectors

The `from` option specifies a package selector which is a way to describe which packages (or more specifically, package paths) a script will run from.

Selectors can be:

- A built-in selector:
  - `all`: All packages in the repo
  - `example`: Example apps
  - `test`: Packages used exclusively for testing
  - `dev`: All development packages (those which are neither examples nor tests)
  - `root`: Selects the root repo directory
  - `current`: Selects the current directory
  - `dart`: All Dart packages
  - `flutter`: All Flutter packages
- A **String** which is not a built-in selector:
  - A package name (e.g. `amplify_flutter`)
  - A component name (e.g. `Amplify Dart`)
  - A glob which is matched against the package name and path (e.g. `*auth*`)
- A **List** of selectors which get OR'd together.
- A **Map** which has keys for one of:
  - `include`/`exclude`: Explicitly includes/excludes a package selector
  - `and`: A list of selectors which are AND'd together
  - `or`: A list of selectors which are OR'd together.

Some examples:

To select a specific set of packages:

```yaml
from:
  - amplify_auth_cognito
  - amplify_secure_storage
  - Amplify UI
```

To select all but a few packages:

```yaml
from:
  exclude:
    - aft
    - smithy

# Same as:
from:
  include: all
  exclude:
    - aft
    - smithy
```

To select all Flutter example packages:

```yaml
from:
  and:
    - flutter
    - example
```

The combinations can get as complex as you want!

#### Templated Scripts

The `run` option takes in any valid Bash script which will be templated using [`mustache`](https://mustache.github.io/mustache.5.html) to give access to the context in which the script is running.

Currently, a Map with the following shape is available for querying:

```json5
{
  "package": {
    "name": "Name of the current package",
    "path": "The absolute path of the current package",
    "pubspecInfo": {
      "pubspec": {
        // "The contents of the pubspec"
      },
      "pubspecYaml": "The original YAML string of the pubspec" 
    },
    "flavor": "dart | flutter",
    "example": {
      // Same properties for the example package, if any
    }
  }
}
```

The script passed to `run` is templated each time it is run with the current package. So when using `{{ package.name }}` in a script, for example, it will always reference the package currently running the script.
