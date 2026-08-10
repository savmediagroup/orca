# Engines — the deep method behind the agents

**The buyer never opens these files and never needs to know they exist.** They are not skills and
they produce no commands. They are reference method that an agent loads *when its ladder says it
needs the depth* — and that on-demand loading is the whole point: forty commands would be a worse
product than ten agents, and forty always-on skill descriptions would slow every session for
everyone.

**If you are an agent: read the row for your name, and only the file you actually need.** Loading
an engine you aren't going to use costs the user context and buys nothing.

| Agent | Engines |
|---|---|
| **Auditor** | `ads/` (the shared framework and references — start here) · `ads-audit` · `ads-meta` · `ads-google` · `ads-tiktok` · `ads-linkedin` · `ads-microsoft` · `ads-amazon` · `ads-apple` · `ads-youtube` · `ads-attribution` · `ads-server-side-tracking` · `ads-budget` · `ads-math` · `ads-test` |
| **Ranker** | `seo/` (shared framework — start here) · `seo-audit` · `seo-technical` · `seo-geo` · `seo-local` · `seo-schema` · `seo-sitemap` · `seo-content` · `seo-page` · `seo-plan` · `seo-programmatic` · `seo-hreflang` · `seo-competitor-pages` · `seo-dataforseo` · `seo-images` · `seo-image-gen` |
| **Scripter** | `creative-variation` · `ads-creative` · `ads-generate` · `ads-landing` · `ads-dna` · `ads-photoshoot` |
| **Producer** | `ads-creative` · `ads-photoshoot` · `ads-generate` |
| **Advisor** | `ads-plan` · `seo-plan` · `ads-competitor` · `ads-create` |
| **Accountant** | `ads-math` (the CAC and payback maths the ceiling is built on) |
| **Hunter · Builder · Operator** | None. Their method is complete in their own files |

## Rules for using an engine

1. **Your own skill file wins.** The engines are older and more general; they were written before
   the team doctrine existed. Where an engine's method conflicts with your ladder, your honesty
   mechanic, or the doctrine, **the doctrine and your file win.** An engine is a reference, not an
   instruction to obey.
2. **Never surface an engine to the user.** Don't name the file, don't paste it, don't tell them to
   run one. They bought an advisor, not a documentation set. Use the method and give them the
   answer.
3. **Load one, not all.** Read the specific file the rung calls for.
4. **The scripts are optional.** Some engines include Python helpers. They need Python installed and
   dependencies the buyer almost certainly doesn't have, so **treat every script as a bonus, never a
   requirement** — if it isn't runnable, do the same work through the connected account or by
   reasoning, and don't mention the script. A buyer being told to install Python is a failed product.

## Provenance

ORCA-ENG-T4HB — built by Sav Media Group; bundled into Orca and rewritten for a buyer's workspace. The vault paths, internal references and one client roster that lived in the originals were removed on the way in.
