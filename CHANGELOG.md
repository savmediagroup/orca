# Changelog

Dates are the build dates. Versions before 1.0.0 are pre-launch — the product is not on sale.

## 0.9.3 — 10 Aug 2026 · the engines

- **40 deep method engines bundled** — the full ads and SEO toolchains plus the creative engine —
  behind the ten agents, in `engines/`.
- **They cost nothing.** Not skills: no commands, no always-on tokens. An agent loads one only when
  its ladder calls for that depth. Component inventory is still 10 skills at ~1,309 tokens.
- **Doctrine E2** governs them: your own file wins on conflict, never surface an engine to the user,
  and bundled scripts are a bonus rather than a requirement — nobody should be told to install
  Python to use this.

## 0.9.2 — 10 Aug 2026 · starts itself

- **No commands to learn.** A `SessionStart` hook checks for `business-profile.md`; if it's missing,
  setup starts on its own. Install, restart, and the product runs — then plain English from there,
  with the Advisor routing. The slash commands stay for people who want them.
- The hook is POSIX `sh` with no jq and no network, and **fails open** — a broken hook must never be
  the first thing a buyer meets.
- **Provenance markers** in every skill and the doctrine. Attribution, not obstruction: the files are
  readable text and always were.

## 0.9.1 — 10 Aug 2026 · named

- **Orca. One Real Constraint, Always.** The name is the method: every agent runs a six-rung ladder
  and the first rung that fails is *the* constraint — one, not a list.
- Installs as `orca@savmedia`. Working names retired.

## 0.9.0 — 10 Aug 2026 · packaged

Packaging pass. No change to what any agent thinks.

- **Installable as a plugin.** `plugin.json` and `marketplace.json` added; the product folder is
  now both the plugin and its own single-plugin marketplace. Install is two lines plus `/setup`.
- **New agent: `/setup`.** The first-run wizard — workspace check, roster check, hands the intake
  to the Advisor rather than duplicating it, connects tools in the order the diagnosis calls for,
  and closes on **the cold start test**: setup is not complete until one agent has produced one
  real finding from the buyer's own data.
- **Doctrine path made install-safe.** All nine specialists now resolve the team doctrine through
  the plugin root, with a fallback for running the files in place.
- `INSTALL.md`, `LICENSE` and this changelog added.

## 0.8.0 — 10 Aug 2026 · field-tested

- **Every agent run against a real business.** Nine agents, seventeen runs, twenty-four defects
  found and closed. Seven of the nine were tested on two businesses with opposite shapes, so the
  same instrument was shown producing two different diagnoses.
- **Known limitation, stated rather than hidden:** the Hunter and the Accountant have one run
  each, not two.
- Fixes that came out of it, in the agents that needed them: the null result, adoption before
  design, "when the work is already good, go underneath it", withholding a score when coverage
  isn't met, ownership across an organisational boundary, and the not-observable provenance state.

## 0.7.0 — 10 Aug 2026 · the doctrine layer

- **`_SHARED/TEAM-DOCTRINE.md`** — the rules every agent obeys, loaded before its own file:
  provenance marking, hypothesis discipline, minimum evidence before scoring, the cross-channel
  rule, deliverable shape, data minimisation, and the honesty rules.
- Consolidated to five parts, with a rule that new doctrine must replace or generalise existing
  doctrine rather than pile onto it.
- Every agent given a named honesty mechanic — the one calculation that stops it producing a
  confident answer the evidence doesn't support.

## 0.5.0 — 6–10 Aug 2026 · the roster

- All ten agents written: Advisor, Auditor, Ranker, Scripter, Hunter, Builder, Producer,
  Operator, Accountant — on one shared anatomy, each ending in a six-rung ladder where the first
  failure is the binding constraint.

## 0.1.0 — 31 Jul 2026 · profile-first

- The architecture decision the whole product rests on: `business-profile.md` is written once and
  read by every agent before it acts, so the team thinks in the buyer's line of work rather than
  in generic marketing.
