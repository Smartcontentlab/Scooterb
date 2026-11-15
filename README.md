# Album Launch HQ

An interactive dashboard and client questionnaire for planning a music artist's album release. One self-contained HTML page, no backend, no accounts, no paid tools.

## What is in it

| Tab | Purpose |
|---|---|
| Overview | Project setup form (artist, album, release date, audience…). Drives the header, countdown, due dates, calendar and mockups. Readiness meters. |
| Discovery | 61-question client intake across 9 areas (story, album, audience, goals and budget, brand, content, rights, live/merch/press, working together). "Copy my answers" exports a readable summary plus a data block. |
| Inspo | Shared inspiration board: upload images, video and PDFs (20 MB each) or add links, file by category, add a note, ♥ picks. |
| Distribution | 45-item checklist: metadata and rights, Spotify, Apple Music, YouTube Music, Amazon Music, other stores. Due dates count back from release. |
| Calendar | 97 pre-planned posts from 9 weeks before to 4 weeks after release. Month and week views, platform filter, add/tick/delete posts, platform playbook. |
| Brand | Logo slot, 5-colour palette, type pairings, tone sliders, voice and visual style notes, live brand board and six post mockups with example captions. |
| Assets | Five folders (cover art, promo images, video, audio, press kit) with spec checklists and a shared-folder link each. |
| Team | Editable contact tracker for team, PR, label, press, playlist curators and creators. |
| Milestones | 18 default key dates stored as offsets from release day; editable, with status. |
| Guide | User guide, answer import, reset, and research sources. |

## Files

- `dashboard.html` — the source. Edit this. All content lives in arrays near the top of the `<script>` (`QS` questions, `DIST` checklist, `ASSETS`, `MS0` milestones, `WEEKLY` and `SPECIAL` post templates, `PALS`, `FONTS`).
- `build.sh` — wraps the source into `index.html`.
- `index.html` — built standalone page. Host this.

After any edit: `./build.sh`

## Two ways to run it

**Shared project (recommended)** — the claude.ai artifact published from `dashboard.html` with the `db`, `assets` and `user` capabilities. Answers, checklists, calendar, contacts and the Inspo board sync for everyone with access. The line under the title shows save status.

1. Open the artifact, use **Share**, and invite the client by email as an **Editor** (Editors can write answers and upload files).
2. Keep "anyone with the link" sharing off: link visitors are read-only, and an outside Editor loses edit rights while link sharing is on.
3. The client needs a Claude account (free works) under the invited email.

Shared data lives in the artifact's database: `hq/p`, `hq/q`, `hq/brand`, `hq/chk`, `hq/links`, `hq/plan`, and one document per board item in `inspo`. Uploaded files are artifact assets served at `/_blob/<id>`.

**Standalone copy** — `index.html` on any static host. Same page, but it saves only in each visitor's browser, uploads are off (links still work on the Inspo board), and answers come back through **Copy my answers** → **Guide → Load answers**.

## Hosting (free options)

`index.html` is a single static file. Any of these work:

- **Netlify Drop**: drag the file onto app.netlify.com/drop.
- **GitHub Pages**: repo Settings → Pages → deploy from branch, root folder.
- **Vercel**: import the repo, framework preset "Other".

## Reusing for another artist

Nothing is artist-specific. Send the same link to a new client; each browser starts from the example project. To change the default rollout, edit the arrays in `dashboard.html` and rebuild.

## Known limits

- Shared mode is last-writer-wins per section: if two people edit the same section in the same second, one edit can be lost.
- The standalone copy has no shared state.
- Uploaded logo is kept in browser storage only; very large images may not persist.
- Platform specs and pitch windows come from secondary sources (distributor and marketing guides, linked in the Guide tab). Confirm in each platform's own artist tools before delivering files.
- Timeline assumes a 12-week rollout with two pre-release singles.

## Next steps worth considering

- Export of the calendar to CSV for a scheduler.
- Figma or Canva versions of the six post mockups once the brand is chosen.
