# Creative Variation Output Template

Use this structure when writing `creative-variation-matrix.md`.

---

## File Header

```markdown
# Creative Variation Matrix — [Client Name]
**Generated:** [YYYY-MM-DD]
**Round:** [R1 / R2 / etc.]
**Round goal:** [what we're testing]
**Platforms:** [Meta, TikTok, etc.]
**Seed performance:** CTR [X%] | CPA [$X] | ROAS [X] (if provided)

## Core Mechanism
[One sentence: why the seed ad works]

## Variation Goal This Round
[What dimension(s) we're isolating]
```

---

## Planning Matrix (Step 2 — approve before full copy)

| ID | Dimension | Variable changed | vs control | Rationale | Status |
|----|-----------|------------------|------------|-----------|--------|
| V1-base | — | — | control | Baseline for learning | ✅ |
| V2 | HOOK | stat/number | hook only | Stat hooks outperform in this vertical | draft |
| V3 | ANGLE | UGC/testimonial | angle only | Seed is polished; UGC may lift trust | draft |

---

## Full Variant Table (Step 6 — final output)

### Meta Feed Variants

| ID | Dimension | Hook type | Primary text | Chars | Headline | Chars | Link desc | CTA | QA | Asset name |
|----|-----------|-----------|--------------|-------|----------|-------|-----------|-----|-----|------------|
| V1-base | control | [type] | [copy] | (125) | [headline] | (32) | [desc] | Shop Now | ✅ | CLIENT-META-R3-V1-base |
| V2-hook | HOOK | stat | [copy] | (118) | [headline] | (28) | [desc] | Learn More | ✅ | CLIENT-META-R3-V2-hook |

### TikTok Script Variants (if applicable)

| ID | Dimension | Hook (0–2s) | Body | CTA | On-screen text | Sound/pacing | QA |
|----|-----------|-------------|------|-----|----------------|--------------|-----|
| V5-format | FORMAT | [spoken hook] | [script] | [spoken CTA] | [text overlays] | [notes] | ✅ |

### Google RSA Variants (if applicable)

| ID | Dimension | Headlines (30 chars each) | Descriptions (90 chars each) | Display path | QA |
|----|-----------|---------------------------|------------------------------|--------------|-----|
| V6 | HOOK | H1: ... \| H2: ... \| H3: ... | D1: ... \| D2: ... | path1 / path2 | ✅ |

---

## Visual Briefs (one block per variant)

```markdown
### V2-hook — Visual Brief
**Asset name:** CLIENT-META-R3-V2-hook
**Format:** Single image, 4:5 (1080×1350)
**Concept:** Bold stat overlay — "87%" in brand primary, rest of frame minimal
**Composition:** Center-weighted number, lower 30% clear for copy overlay
**Style:** [match seed / UGC / studio — per variant]
**Do not include:** [text in image if copy lives in primary text field]
**Generation prompt:** [ready for /ads generate or banana-claude]
**Safe zone:** Meta feed — lower 30% minimal
```

For TikTok/Reels scripts, include:

```markdown
**Shot list:**
1. 0:00–0:02 — [hook shot]
2. 0:02–0:08 — [body]
3. 0:08–0:12 — [CTA + product/offer]

**On-screen text:** [exact overlays + timing]
**Audio:** [trending sound / VO / silence]
```

---

## Launch Shortlist

```markdown
## Launch First (3–5 variants)

| Priority | ID | Why |
|----------|-----|-----|
| 1 | V2-hook | Highest-leverage isolated test vs control |
| 2 | V3-angle | Second dimension with strongest hypothesis |
| 3 | V1-base | Control — required for valid learning |

**Hold for round 2:** V4-format (format tests need clean hook/angle winner first)

**Budget split suggestion:** 40% control | 30% V2 | 30% V3 (adjust per account structure)
```

---

## UTM & Naming Reference

```
Naming: [CLIENT]-[PLATFORM]-[ROUND]-[VARIANT_ID]-[DIMENSION]
UTM: ?utm_source=[platform]&utm_medium=paid&utm_campaign=[client]-[round]&utm_content=[variant_id]
```
