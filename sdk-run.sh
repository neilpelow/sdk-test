#!/bin/bash

# Desired Java Version
JAVA_VERSION="8.0.322-zulu"

# Check if SDKMAN is installed
if [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]]; then
    source "$HOME/.sdkman/bin/sdkman-init.sh"
else
    echo "SDKMAN not found. Installing SDKMAN..."
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# Checks if the desired Java version is installed.
# Then, install it if it is not.
# Use the specified Java version.
sdk env

# Proceed with the Gradle build
./gradlew