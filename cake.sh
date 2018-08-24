#!/bin/sh

SCRIPT='0-build/build.cake'
CAKE_VERSION='0.30.0'

# Install  cake.tool
dotnet tool install --global cake.tool --version $CAKE_VERSION

# Start Cake
CAKE_ARGS="$SCRIPT -verbosity=verbose"

echo "\033[32mdotnet cake $CAKE_ARGS $@"

dotnet cake $CAKE_ARGS "$@"
