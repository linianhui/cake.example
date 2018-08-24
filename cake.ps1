[string]$SCRIPT       = '0-build/build.cake'
[string]$CAKE_VERSION = '0.30.0'

# Install cake.tool
dotnet tool install --global cake.tool --version $CAKE_VERSION

# Start Cake
[string]$CAKE_ARGS = "-verbosity=verbose"

Write-Host "dotnet cake $SCRIPT $CAKE_ARGS $ARGS" -ForegroundColor GREEN

dotnet-cake $SCRIPT $CAKE_ARGS $ARGS