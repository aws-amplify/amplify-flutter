#!/bin/sh

echo "Updating dependabot.yaml with all pubspec.yaml files."

# clear the file
> .github/dependabot.yaml

# write header
echo "version: 2" >> .github/dependabot.yaml
echo "enable-beta-ecosystems: true" >> .github/dependabot.yaml
echo "updates:" >> .github/dependabot.yaml
for pubspec in */pubspec.yaml */*/pubspec.yaml */*/*/pubspec.yaml */*/*/*/pubspec.yaml; do
  dir=$(echo $pubspec | sed -e "s/pubspec.yaml$//")
  echo '  - package-ecosystem: "pub"' >> .github/dependabot.yaml
  echo "    directory: \"${dir}\"" >> .github/dependabot.yaml

  echo '    schedule:' >> .github/dependabot.yaml
  echo '      interval: "daily"' >> .github/dependabot.yaml
done

echo "Done!"
exit 0
