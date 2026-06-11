<img width="1080" height="1350" alt="telegram-cloud-document-4-5974547813680291996" src="https://github.com/user-attachments/assets/d3ebcec5-91ec-4e4e-9117-8774f5e8b34d" />

# AI Video Generator — Claude Skill

> **10 prompt engineering skills that turn Claude into a cinematic video director for Seedance 2.0 on Higgsfield.** You describe an idea — the skill architects a 15-25 line production-grade prompt with exact timing, camera angles, lighting setup, and sound design. Paste into Higgsfield, get studio-quality video.

**This is the actual skill set I use to generate every AI video for [@theromanknox](https://instagram.com/theromanknox) (280K+ followers).** Not templates. Not "try this prompt." The real production pipeline — copied straight from my `~/.claude/skills/`.

---

## What it does

You give it a concept — "10s product launch video, dark UI, minimal" — and it gives you back:

- **Complete Seedance 2.0 prompt** — 15-25 lines, paste-ready, with timestamps for every second
- **2-second hook engineering** — 10+ scroll-stopping patterns per style (pattern interrupt, curiosity gap, dopamine trigger)
- **Camera movement direction** — 15+ techniques with exact phrasing Seedance 2.0 understands (dolly, orbit, whip pan, snap zoom, rack focus)
- **Lighting & mood presets** — three-point, neon contrast, silhouette, golden hour, practical lights
- **Sound design layers** — ambient + impact + music + voice, synced to visual beats
- **Platform optimization** — TikTok, Instagram Reels, YouTube Shorts, LinkedIn — aspect ratio, safe zones, loop potential
- **Material references** — tells you exactly where to use `@image1`, `@video1`, `@audio1`

One idea in, finished video prompt out.

---

## The 10 skills

### For views
| # | Skill | What it generates |
|---|---|---|
| 01 | **Viral Hook** | Scroll-stopping openers — pattern interrupts, curiosity loops, dopamine triggers |
| 05 | **Faceless Channel** | No face, no camera content for YouTube, TikTok, Reels |
| 10 | **Podcast Visual** | Turns any audio clip into cinematic video — kills the audiogram |

### For business
| # | Skill | What it generates |
|---|---|---|
| 02 | **SaaS Launch** | Product videos that look like an Apple keynote |
| 04 | **Course Promo** | Trailers that sell out coaching programs and courses |
| 08 | **Testimonial Story** | Social proof videos that actually convert |

### For brand
| # | Skill | What it generates |
|---|---|---|
| 03 | **Personal Brand** | Founder authority content on autopilot |
| 06 | **Luxury Aesthetic** | Chanel-level video for any brand, zero budget |
| 07 | **Before-After** | Transformation reveals that get saved and shared |
| 09 | **AI Avatar** | Digital persona content at scale |

---

## Why "write me a cool video" doesn't work

Most people write 2-line prompts and get generic output. Seedance 2.0 is a precision engine — it responds to specific camera language, lighting terminology, and timing breakdowns. Vague input = vague output.

These skills solve that by encoding three things into every prompt:

1. **The physics of attention** — the first 2 seconds determine if 50% of viewers bounce or 90% stay. Every prompt opens with a hook engineered for retention.
2. **Cinematic vocabulary** — Seedance 2.0 understands "dolly forward 3 feet, f/1.4, rack focus from foreground to background" better than "make it look cinematic."
3. **Sound-visual sync** — every audio element (bass hit, whoosh, ASMR texture, silence) is timestamped to a visual beat. Sound is 50% of the hook.

The result: prompts that produce studio-quality video instead of generic AI slop.

---

## Install

```bash
# Clone into your Claude skills folder
cd ~/.claude/skills
git clone https://github.com/rediumvex/ai-video-generator-claude.git ai-video-generator
```

Or if you use gstack:

```bash
cd ~/.claude/skills/gstack
git clone https://github.com/rediumvex/ai-video-generator-claude.git ai-video-generator
```

Restart Claude Code. Each skill inside `skills/` is now available.

You can also use the interactive installer:

```bash
cd ai-video-generator
python install.py          # Pick which skills to install
python install.py --all    # Install everything
python install.py --list   # Preview available skills
```

---

## Usage

```
"I need a 10s product launch video for my SaaS app, dark mode UI, minimal aesthetic"
→ SaaS Launch skill generates a complete prompt with camera, lighting, sound, timing

"Create a 6s before-after for my client's brand redesign"
→ Before-After skill builds the contrast arc: cold→warm lighting, gray→saturated color, chaos→order

"Give me a viral TikTok hook for a faceless finance channel"
→ Viral Hook + Faceless Channel skills combine for a scroll-stopping 2-second opener

"Turn this podcast clip into a cinematic video for Reels"
→ Podcast Visual skill transforms the audio into visual storytelling with kinetic typography
```

---

## What's inside each skill

Every skill is a deep engineering framework, not a prompt template. Each one contains:

- **2-second hook framework** — 10+ attention-capture patterns specific to the style
- **Timeline architecture** — beat-by-beat breakdown for every second of a 4-15s clip
- **Camera movement encyclopedia** — 15+ techniques with exact Seedance 2.0 phrasing
- **Lighting & mood presets** — full setups (key, fill, rim, practical, color temp)
- **Sound design stack** — 4-layer audio architecture synced to visual beats
- **Material reference system** — where and how to use `@image1` `@video1` `@audio1`
- **Platform optimization** — TikTok, Reels, Shorts, YouTube tuning
- **5+ production-ready example prompts** — 15-25 lines each, ready to paste

---

## Who built this

**Roman Knox** — I build AI products that make money. Not demos.

- 📸 [Instagram — @theromanknox](https://www.instagram.com/theromanknox) (280K+ followers)
- 🎓 [Knox Community on Skool](https://www.skool.com/knox/about) — n8n library, Claude skills, cold outreach systems, weekly live sessions

### My other Claude skills

- [📝 SEO Blog Writer](https://github.com/rediumvex/seo-blog-writer-claude) — human-sounding blog posts that rank on Google and beat AI detectors
- [📱 Social Media Caption Generator](https://github.com/rediumvex/social-media-caption-generator-claude) — one prompt → captions for every platform

---

## License

MIT — Copyright (c) 2026 Roman Knox

A ⭐ on the repo is the best thank-you. It helps other builders find these skills.
