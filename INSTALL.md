# Install Orca

**One Real Constraint, Always.**

Ten minutes, and you don't need to be technical. If you get stuck at any step, stop there and
send us that step number — we'd rather fix it than have you push through it.


---

## Before you start

**You need a Claude Pro or Max subscription.** The team runs on your own Claude account, which
is why there's no usage bill from us — and why it can't run on a free plan.

That's the only requirement. There is no server to set up, no API key to buy, and nothing of
yours gets stored anywhere but your own computer.

---

## 1. Install Claude Code

Download it from **claude.com/claude-code** and sign in with the Claude account your
subscription is on.

Claude Code is the application the team lives inside. If you already have it, skip ahead.

---

## 2. Make a folder for the team

Create a folder on your computer — something like `Business` or your company name — and open
it in Claude Code.

**This folder matters more than it sounds.** Your business profile and every report the team
writes are files that live here. It should be somewhere you'll go back to, not Downloads and
not the desktop.

---

## 3. Add the team

Type these two lines into Claude Code, one after the other:

```
/plugin marketplace add savmediagroup/orca
```

```
/plugin install orca@savmedia
```

The first line tells Claude Code where to find us. The second installs the team. Both are
instant.

---

## 4. Restart, and let it start itself

Restart Claude Code and open your folder. **Orca starts setup on its own** — you don't have to
know any commands. If for any reason it doesn't, type:

```
/setup
```

Setup will:

1. Check the folder and confirm which agents are installed.
2. Hand you to **The Advisor**, which asks about eight questions about your business and
   writes your profile. This is the only long part — about ten minutes.
3. Show you which tools are worth connecting first, based on what the Advisor found. **Connect
   them in that order**, not all at once.
4. Prove the install by running one agent for real and showing you one thing about your
   business you didn't know when you started.

**Setup isn't finished until step 4 produces something real.** If it can't yet — usually
because nothing's connected — it will tell you exactly which one connection unblocks it.

---

## After setup

**Start with the Advisor every time.** It works out which specialist you need, so you never
have to remember what the other nine do — and from here on, just say what's going on in your
business in plain English. The right agent gets picked for you.

If you'd rather be explicit:

```
/advisor
```

**Come back weekly.** Run the Advisor against the same profile and it compares against the last
diagnosis it wrote. Every time you replace a guess in your profile with a real number, every
agent on the team gets more accurate. That's the part that compounds, and it only works if you
come back.

---

## The team

| Agent | What it does |
|---|---|
| `/advisor` | The front door. Diagnoses the business, finds the one thing that's actually holding it back, routes the fix |
| `/auditor` | Paid advertising — tracking, waste, structure, whether the spend can be judged at all |
| `/ranker` | Search — Google, and whether AI assistants cite you when someone asks for what you sell |
| `/scripter` | Offers, hooks and copy — and every claim traced back to evidence or cut |
| `/hunter` | Outbound — fit, lists, deliverability, sequences, and the reply maths behind them |
| `/builder` | CRM, funnels and automations — including whether what's built actually fires |
| `/producer` | The content engine — capacity, angles, capture, distribution, measurement |
| `/operator` | Process, ownership, reporting and founder load |
| `/accountant` | The money — unit margin, cash, and the most you can profitably pay for a customer |

You don't need to memorise this. Ask the Advisor.

---

## Updating

```
/plugin update orca
```

The agents improve as they're field-tested. Updating is how you get that.

---

## Troubleshooting

**"The commands aren't there after installing."**
Restart Claude Code. Plugin skills load at session start.

**"It says it can't find my profile."**
Run `/setup`, or `/advisor` and ask it to run the intake. The profile is a file called
`business-profile.md` in your folder — if it isn't there, nothing has written it yet.

**"An agent says it can't see my account."**
That agent has no connection to that system, so it's working in advise mode. Run `/setup` and
ask about connecting it — and know that advise mode is still real work, not a degraded one.

**"It asked me for a password or an API key."**
It shouldn't, and none of these agents are built to. Don't paste it. Connections are made
through Claude Code's own connector settings, where the credential never passes through the
conversation. Tell us if this happens.

---

## Your data

Your profile and reports are **files in your folder, on your machine**. We don't hold them, and
the team doesn't send them anywhere. When you connect a tool, the agent reads it through your
own connection, under your own permissions — read-only wherever read-only exists.
