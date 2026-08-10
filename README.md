# Product Source — The Agent Team

> This folder is the PRODUCT — what buyers install. Everything in here must be
> **client-agnostic**: no Sav Media context, no Sav clients, no Sav numbers baked in.
> The plan for the product lives one level up in [00-PRODUCT-PLAN.md](../00-PRODUCT-PLAN.md).

## The core architecture rule: PROFILE-FIRST

The product must think in the **buyer's** line of work, not ours. The mechanism:

1. **`business-profile.md`** — one file at the buyer's workspace root that describes THEIR
   business: what they sell, to whom, their numbers, channels, team, compliance constraints.
2. **The Advisor generates it** on first run via a conversational intake (8 questions max).
   No profile → intake runs before any advice is given. This IS the "pre-install doc".
3. **Every agent reads the profile first.** No agent gives advice, writes copy, or builds
   anything without loading it. The profile is the lens; the frameworks are universal.
4. **The profile is living** — agents append confirmed facts (real CPLs, close rates,
   channel results) as they learn them, so the team gets smarter about the business over time.

## Layout

```
product/
├── .claude-plugin/
│   ├── plugin.json                    ← the plugin manifest (this folder IS the plugin)
│   └── marketplace.json               ← and its own single-plugin marketplace
├── README.md                          ← this file
├── INSTALL.md                         ← what the buyer reads — two commands, then /setup
├── CHANGELOG.md
├── LICENSE
├── setup/
│   └── BUSINESS-PROFILE-TEMPLATE.md   ← the template the Advisor fills on first run
├── skills/
│   ├── _SHARED/TEAM-DOCTRINE.md       ← the rules ALL agents obey — every agent reads it first
│   ├── setup/SKILL.md                 ← first-run wizard — install, tools, and the cold start test
│   ├── advisor/SKILL.md               ← Agent 0 — The Advisor (front door, routes everything)
│   ├── auditor/SKILL.md               ← Agent 1 — The Auditor (paid media audit + rebuild)
│   ├── ranker/SKILL.md                ← Agent 2 — The Ranker (SEO + AI-search / GEO)
│   ├── scripter/SKILL.md              ← Agent 3 — The Scripter (offers, hooks, copy, VSLs)
│   ├── hunter/SKILL.md                ← Agent 4 — The Hunter (outbound)
│   ├── builder/SKILL.md               ← Agent 5 — The Builder (CRM / funnels / automation)
│   ├── producer/SKILL.md              ← Agent 6 — The Producer (content engine)
│   ├── operator/SKILL.md              ← Agent 7 — The Operator (PM, SOPs, cadence, reporting)
│   └── accountant/SKILL.md            ← Agent 8 — The Accountant (money, the CAC ceiling)
├── engines/                           ← 40 deep method files. NOT skills — loaded on demand only
│   └── README.md                      ← the index agents read; doctrine E2 governs use
├── hooks/hooks.json                   ← SessionStart: starts setup itself on a fresh workspace
├── scripts/orca-first-run.sh          ← that check. POSIX sh, no deps, fails open
└── examples/
    └── business-profile-example.md    ← filled example (fictional decking company)
```

**Roster complete and field-tested (10 Aug 2026)** — 9 agents, 17 runs against real businesses,
24 defects closed. Seven of the nine were run on two opposite-shaped businesses and produced two
different diagnoses from the same ladder. **The Hunter and the Accountant have one run each** —
state that limitation when shipping rather than rounding it up.

## The name

**Orca — One Real Constraint, Always.** Locked 10 Aug 2026.

The expansion is the method, not a slogan: every agent runs a six-rung ladder and **the first rung
that fails is the constraint** — one, not a list. It never ships on the install line; it belongs in
the deck and on the call. The name stands alone either way.

## Installing it

The folder is the plugin *and* its own marketplace, so there is no build step — publishing is a
git push. Buyers run:

```
/plugin marketplace add https://github.com/savmediagroup/orca.git
/plugin install orca@savmedia
/setup
```

Distribution repo: **`savmediagroup/orca`, private** — buyers are added as collaborators, which is
also how access is revoked. Full buyer-facing instructions in [INSTALL.md](INSTALL.md).

**The buyer needs no technical skill and no command list.** A `SessionStart` hook checks for
`business-profile.md`; if it's missing, setup starts on its own. After that they describe the
problem in plain English and the Advisor routes it. The slash commands exist for people who want
them — nobody has to learn ten of them.

```
install → setup starts itself → Advisor diagnoses → the right specialist runs
```

The hook is POSIX `sh`, no jq and no network, and **fails open**: if it breaks on someone's
machine the session continues normally. A broken hook must never be the first thing a buyer meets.

## The engines

`engines/` holds **40 deep method files** — the full ads and SEO toolchains plus the creative
engine — behind the ten agents.

**They are not skills.** They add no commands and no always-on tokens; an agent loads one only when
its ladder calls for that depth. Verified: the component inventory is still 10 skills at ~1,309
tokens with all 40 present. Forty commands would have been a worse product than ten agents, and
forty always-on descriptions would have slowed every session for everyone.

Indexed in [engines/README.md](engines/README.md), governed by doctrine **E2**: the agent's own file
wins on conflict, engines are never surfaced to the user, and **bundled scripts are a bonus, never a
requirement** — a buyer being told to install Python is a failed product.

## The setup wizard

`/setup` is deliberately thin. It checks the workspace and the roster, **hands the intake to the
Advisor rather than running a second one**, and connects tools *in the order the diagnosis calls
for* instead of asking for nine integrations up front.

It ends on **the cold start test**: setup is not complete until one agent has produced one real
finding from the buyer's own data — not a summary of their profile, not a list of capabilities.
If nothing real can be produced yet, it says so and names the single connection that would
unblock it. **A smooth onboarding that produces nothing is the failure mode of every AI product**,
and this is the check against it.

## Each agent's honesty mechanic

Every specialist carries one named, mandatory calculation that stops it producing a confident
answer the evidence doesn't support. These are the hardest part of the product to copy and the
main reason the advice is trustworthy.

| Agent | Mechanic | What it prevents |
|---|---|---|
| Advisor | Stress-test best/expected/worst + the fastest cheapest test | Prescribing on instinct |
| Auditor | **The noise floor test** — breakeven effect ÷ their own variance | Judging ads by sales data that can't see them |
| Ranker | **The citation test** (3 tiers) + the timeline honesty rule | Promised rankings and dates; GEO by opinion |
| Scripter | **The claim ledger** + the variation matrix | Slop, regulated-sector damage, tests that prove nothing |
| Hunter | **The reply math** — worked backwards from the revenue target | Outbound plans the business can't send or answer |
| Builder | **The three-lead test** + the leak cost | "It's built" when nothing fires; unpriced hygiene projects |
| Producer | **The batch economics** + the reservoir rule | Calendars that die in month three |
| Operator | **The capacity check** — every plan costed in hours/week | Process added to teams with no spare hours |
| Accountant | **The ceiling** (max profitable CAC + payback) + the minimum scoreboard | The whole team guessing |
| Setup | **The cold start test** — one real finding from their own data before setup can close | An onboarding that feels smooth and delivers nothing |

Every agent also shares one anatomy: doctrine → profile (with fallback) → access check → intake
gaps → a six-rung ladder where the first failure is the binding constraint → the honesty mechanic →
exactly three sequenced steps → named deliverables → routing → guardrails.

## The doctrine layer

`_SHARED/TEAM-DOCTRINE.md` holds the twelve rules every agent obeys — provenance marking,
hypothesis discipline, the cross-channel rule, minimum evidence before scoring, deliverable shape,
approval and safety, the shared honesty rules, the handoff brief, the flywheel exception.

Each agent loads it as **STEP −1**, before its own file. Their skill files hold ladders, questions
and judgement; the doctrine holds the discipline that makes any of it trustworthy.

**Why it exists:** the same defects kept appearing in nine separate files. Field tests now produce
one edit instead of nine, and a fix can't reach eight agents and miss the ninth. When a field test
finds something that applies to more than one agent, **it belongs here, not in the skill.**

## Dev copies

Product source is canonical. The dev copies under `.claude/skills/<name>/` let Ahmed invoke the
agents inside this vault.

**All nine are thin pointer stubs** that read the doctrine and then the product source. Drift is
structurally impossible — verified zero drift before the last four full duplicates were converted
on 10 Aug 2026.

**Naming collision:** the product Scripter's dev copy is `scripter-product`, because Sav already
has an unrelated internal `/scripter` skill. Do not overwrite it.

## The bug that shaped the product

**Never write a dollar sign immediately followed by a digit in a skill file.** Argument
substitution eats it silently. It corrupted the Auditor's waste-ledger example, and — undetected
for longer — the Advisor's auction analogy and concrete-numbers voice rule, which is the front
door's most memorable line. Grep every skill for `\$[0-9]` before shipping.

## Agent anatomy (every specialist follows this)

**Load profile → Intake gaps → Diagnose → Recommend → (offer to) Execute → Deliver → Log to profile**

Two modes:
- **Advise mode** — no tools needed; strategy + recommendations only. Always works.
- **Execute mode** — uses connected MCPs (CRM, ad platforms, accounting) when available.
  Degrade gracefully: if a tool isn't connected, deliver the advice + exact manual steps.

## Dev testing in this vault

A dev copy of each skill is installed at `.claude/skills/<name>/` so Ahmed can invoke it here.
The product source in THIS folder is canonical — edit here, then sync the dev copy.
Test rule (from the build routine): every agent gets run against a real client scenario
before it counts as shipped — but no client data ever flows back into `product/`.
