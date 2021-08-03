# Bitrise-iOS-Cocoapods-Sample

[![Bitrise status](https://app.bitrise.io/app/e6bc630bcb225bce/status.svg?token=wAXwQNEY8r-nqPD-XektbQ&branch=main)](https://app.bitrise.io/app/e6bc630bcb225bce)

This is a sample iOS project that demonstrates a [Bitrise](https://bitrise.io) CI/CD setup using [Cocoapods](https://cocoapods.org/). Build history is publicly available [here](https://app.bitrise.io/app/de773fd163744fb1#/builds).

## Project setup and config

This is a Cocoapods based sample iOS project which runs unit and UI tests on both simulator and device. Currently there are 2 available workflows for this app:

`Run_Simulator_Tests` does the following:

- Clone this repository
- Install Cocoapods dependencies
- Run the tests on simulator via `Xcode Test for iOS` step
- Deploy the test results so they will be available on the `Test Reports` page

`Run_Device_Tests`: does the following:

- Clone this repository
- Install Cocoapods dependencies
- Run the tests on device via `[BETA] iOS Device Testing` step
- Deploy the test results so they will be available on the `Test Reports` page

For more complex Bitrise workflows, check out our other sample projects.
