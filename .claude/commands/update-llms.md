# Update llms.txt Skill

You are maintaining `llms.txt` at the root of the Gameball docs repo (`/llms.txt`). This file is the AI navigation index for `https://docs.gameball.co/llms.txt` — it is what LLMs read to understand the documentation site and find the right pages. Keeping it accurate is critical.

The user will provide: **$ARGUMENTS** — a description of what changed (new page added, page renamed, URL changed, page removed, section restructured).

---

## STEP 1: Understand What Changed

Parse the user's description to identify:
- **New pages**: slug path(s) added to `docs.json`
- **Renamed pages**: old slug → new slug
- **Removed pages**: slug path(s) deleted from `docs.json`
- **Moved pages**: slug moved to a different group/section in `docs.json`

If the change isn't clear, read the relevant section of `docs.json` to confirm the current state before making edits.

---

## STEP 2: Determine Whether llms.txt Needs Updating

Not every change to the docs warrants an llms.txt update. Apply this rule:

**Update llms.txt when:**
- A new page covers a topic that is meaningfully distinct and useful for LLMs to discover (not just a template variant or minor sub-page)
- A URL changed for a page that is already listed in `llms.txt`
- A page was removed that is currently listed in `llms.txt`
- A page was renamed and the URL changed for a listed entry

**Skip llms.txt when:**
- The new page is a duplicate, variant, or minor template (e.g., "seventh-order" campaign template when we already list "first-order")
- The change is only to page content/copy, not the URL or nav structure
- The page is inside the v2 SDK section (v2 is outdated and excluded from llms.txt)
- The change is purely cosmetic (title rename with no URL change)

---

## STEP 3: Choose the Right Section

`llms.txt` is organized into these sections — place new entries in the matching one:

| Section | What goes here |
|---|---|
| Getting Started | Onboarding, overview, launch checklist |
| Understanding Your Customers | Customer profiles, tags, events, lists, bulk import |
| Loyalty Programs | Earn, redeem, referral, VIP tiers |
| Reward Campaigns | Campaign types, setup, insights, templates |
| Communication Campaigns | Email, SMS, push, web messages |
| Automation Campaigns | Automation flows, triggers, actions, webhooks |
| Customer Segmentation | Segments, RFM |
| Analytics | All analytics/reporting pages |
| Customer Widget | Widget config, customization, visibility |
| Onsite Components | Checkout and product page components |
| Coupons | Coupon engine and manual creation |
| Admin Settings | API keys, events, attributes, users, workspaces |
| Apps & Integrations | Third-party integrations |
| SDK Installation (v3) | Web, POS, iOS, Android, Flutter, React Native SDK pages |
| Technical Tutorials | Developer guides, order handling, redemption, referral API |
| API Reference | Core API endpoints and webhooks |
| Optional | Niche, advanced, or supplementary content |

When in doubt, prefer **Optional** over cluttering a primary section.

---

## STEP 4: Write the Entry

Each `llms.txt` entry follows this exact format:
```
- [Page Title](https://docs.gameball.co/{slug}): Brief description of what this page covers
```

### Rules for entries:
- **Title**: Use the human-readable page title, not the slug. Match the `title` from the MDX frontmatter.
- **URL**: Always `https://docs.gameball.co/` + the slug from `docs.json` (no `.mdx` extension).
- **Description**: One sentence. Start with a verb or noun phrase. Describe what the reader learns or does on this page.
- Keep descriptions under 100 characters when possible.
- Do NOT duplicate an existing entry — check before adding.

---

## STEP 5: Edit llms.txt

Read `/llms.txt` first, then apply the minimal targeted change:

- **Add**: Insert the new entry in the correct section, in a logical position (introductions first, how-tos after, FAQs/references last within the section).
- **Update URL**: Find the old URL and replace it with the new one. Do not change the title or description unless the page content also changed significantly.
- **Remove**: Delete the line for the removed page.
- **Move**: If a page moved sections, move its entry to the matching section.

---

## STEP 6: Verify

After editing, confirm:
- [ ] The URL in the entry matches the current slug in `docs.json`
- [ ] No duplicate entries exist for the same page
- [ ] The section is correct for the content type
- [ ] The description is accurate to the page's actual content
- [ ] No entries were accidentally removed or modified

---

## EXECUTION

Apply the steps above for: **$ARGUMENTS**

1. Read `docs.json` if needed to confirm current slugs
2. Decide whether llms.txt needs updating and why
3. Make the targeted edit to `llms.txt`
4. Report what you changed and why (or why no change was needed)
