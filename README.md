# MyDockerfile

Create your own Dockerfile syntax using a language agnostic preprocessor

## How to use:

This dockerfile image contains a binary `/bin/dockerfile-entrypoint` based on buildkit's dockerfile:experimental.

The difference from buildkit's is that we first run the Dockerfile through an arbitrary preprocessor at `/preprocessor`, giving the user a chance to create their own dockerfile syntax in a very simple way.
