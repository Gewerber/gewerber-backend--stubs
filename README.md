# gewerber-backend-stubs

Public placeholder packages for the closed-source
[`gewerber-backend-commercial`](https://github.com/Gewerber/gewerber-backend-commercial)
Serverpod module (nickname `commercial`).

## Purpose

Serverpod embeds the clients of all modules listed in `generator.yaml` into the
generated client SDK of a server. The open-source Gewerber backend therefore
has a compile-time dependency on `gewerber_backend_commercial_server` and
`gewerber_backend_commercial_client`. This repository provides public stand-in packages
with identical names and API surface, so that **open-source builds work without
access to the private repository**.

- `gewerber_backend_commercial_client` — full generated client (public API surface:
  endpoint callers and serializable models).
- `gewerber_backend_commercial_server` — same models and endpoint signatures, but all
  endpoint method bodies throw `UnimplementedError`. Contains no business
  logic.

Contributors with access to the private repository resolve the real packages
via a gitignored `pubspec_overrides.yaml` pointing at their local checkout.
Release CI/CD injects the real repository using a token.

## Sync rule

Whenever endpoints or models of the commercial module change in a way that
changes the generated client or protocol descriptors, this repository must be
updated in the same round. CI here keeps the workspace analyzable; the
open-source backend's CI validates resolution against these stubs.
