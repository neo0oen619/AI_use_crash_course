# AGENTS – Guidelines for AI agents in this repo

This file defines how AI agents should work inside this project.  
It applies to the whole repository unless overridden by a more specific `AGENTS.md` in a subfolder.

The goal of the project is to build a **self‑study AI crash‑course**, primarily in **Hebrew** and fully mirrored in **English**, for **people / learners / researchers** (many with a psychology background) who are not necessarily technical.

---

## 1. General philosophy

- Work **slowly and iteratively**. Prefer small, clear improvements over big rewrites.  
- Treat the repo as a **living course**: refine content over time instead of trying to “finish everything” in one pass.  
- Keep things **simple, concrete, and readable**. Avoid unnecessary jargon or math.  
- Assume the reader is **smart but busy**, and often not “techy”.  
- Respect the existing structure; do not reorganize folders aggressively without a strong reason.

---

## 2. Audience and tone

- Address the audience as **people / learners / researchers**, not only as “doctors”.  
- Assume some users have a **psychology** background; you may add light psychology‑related examples, but:
  - Keep psychology content to a **small fraction** of the total (just enough to make it relatable).  
  - Do **not** turn this into a clinical or therapeutic manual.
- Use a tone that is:
  - clear,
  - calm,
  - practical,
  - non‑patronizing.

---

## 3. Language and bilingual structure

- The **primary teaching language** is **Hebrew**.  
- **English** is also a **first‑class citizen**:
  - it gives high‑level overviews,  
  - it contains real lessons and examples,  
  - it lets non‑Hebrew readers follow the full crash‑course.
- Do **not** tell users “ask an AI to translate the Hebrew”; instead, make sure there is **usable content in both languages** whenever a concept is important.

### 3.1 Module layout (00–11)

Each module under `course/` should follow this pattern:

- Root folder (e.g. `course/03_models_context/`):
  - May contain Hebrew lesson files (e.g. `01_...md`, `02_...md`) and/or shared assets.  
- `hebrew/`:
  - Contains a `README.md` that:
    - explains in Hebrew what the module covers,  
    - links to the relevant Hebrew episodes (in the root or in `hebrew/`),  
    - briefly mentions the parallel English files.  
  - May contain additional or “refined” Hebrew versions of lessons.  
- `english/`:
  - Contains a `README.md` that:
    - explains in English what the module covers,  
    - lists the English lesson files (episodes),  
    - can point to Hebrew files for readers who know both.  
  - English files should **stand on their own** (short but complete), not only say “translate the Hebrew”.

### 3.2 Refinement strategy

- For **Module 00**:
  - `course/00_roadmap_syllabus/hebrew_refined/` is the canonical refined Hebrew version.  
  - Do **not** destroy or overwrite the original Hebrew files; they can serve as history or backup.  
- For **other modules**:
  - When refining Hebrew or English text, you may either:
    - improve existing files in place, **or**  
    - create parallel “refined” files/folders if that makes things clearer.  
  - Always keep links and references consistent after changes.

---

## 4. File and folder rules

- **Do not delete** user‑facing content (Markdown lessons, exercises) unless you are sure it is unused and outdated.  
- Prefer **adding** or clearly refactoring over removing.  
- Maintain the existing module numbering and naming (matching the folders under `course/`):
  - `00_roadmap_syllabus`  
  - `01_intro`  
  - `02_start_here_self_learners`  
  - `03_models_context`  
  - `04-practical_usage`  
  - `05_prompt_engineering_basic`  
  - `05_prompt_engineering_advanced`  
  - `06_probabilistic_creative`  
  - `07_quirks_safety`  
  - `08_ethics_privacy`  
  - `09_projects_summary`  
  - `10_prompt_library`  
  - `11_agents`  
  - `instructor_guide`  
  - `ai_internal_notes`

### 4.1 `user_add_ideas_videos/`

- This folder is **for human users**, not for AI agents to populate automatically.  
- Agents:
  - May **refer** to this folder in documentation and exercises (e.g. “save your prompts here”).  
  - Should **not create or modify** user content inside it unless explicitly instructed by the user.

---

## 5. Content style (Hebrew)

When writing or refining Hebrew content:

- Prefer:
  - short sentences,  
  - everyday words,  
  - examples from daily life, study and work.  
- When using technical terms (tokens, context window, truncation, etc.):
  - first give a **simple explanation in Hebrew**,  
  - then add the English term in parentheses.  
- End conceptual sections with something **practical**:
  - a short exercise,  
  - a suggested prompt to try with AI,  
  - or a mini checklist.

### 5.1 Practical tips for acting in Hebrew

- When editing existing Hebrew, avoid touching lines that are already good; change only what is needed to improve clarity or fix corruption/encoding.  
- Prefer **gender‑neutral or inclusive phrasing** where possible, and avoid over‑formal language that makes the text hard to read.  
- Be careful with RTL/LTR mixing:
  - keep file paths, code, and prompts inside backticks (`` `...` ``),  
  - do not reorder English words inside Hebrew sentences.  
- When adding example prompts:
  - write full prompts in Hebrew (not “describe in English and let the user translate”),  
  - keep them copy‑paste‑ready so learners can use them directly with an AI model.  
- If a section of Hebrew is heavily corrupted (mojibake), prefer **rewriting the whole paragraph cleanly** instead of trying to patch individual characters.

---

## 6. Content style (English)

When writing or refining English files:

- Assume they are for **navigation and learning**, not just navigation.  
- Keep them concise and focused on:
  - what the module is about,  
  - which files to read (in English and, optionally, in Hebrew),  
  - how to combine reading with actually using AI.  
- English does **not** have to mirror every line of Hebrew, but it should:
  - provide clear explanations and examples,  
  - be usable on its own without external translation.

---

## 7. Safety, ethics and psychology

- Respect the intent of Modules 07 and 08:
  - Do not weaken safety messages.  
  - Do not encourage using AI as a replacement for professional judgment.  
- Keep psychology‑related examples:
  - non‑clinical,  
  - non‑diagnostic,  
  - focused on learning, reflection and organizing thoughts.  
- Avoid:
  - concrete treatment protocols,  
  - personal therapeutic advice,  
  - identifying real individuals.

---

## 8. Working rhythm for agents

When making changes:

1. **Scan** the relevant module/folder and understand the current structure.  
2. **Plan** a small, clear improvement (e.g. refine one README, add one exercise, tidy links).  
3. **Apply** changes to a limited set of files.  
4. **Re‑scan** to ensure links and references still make sense.  
5. Only then move on to the next small improvement.

Avoid huge, multi‑module edits in a single step.

---

## 9. Project‑specific conventions and files

- The `course/` directory contains:
  - bilingual lessons (Hebrew + English) for modules `01`–`09`,  
  - a `10_prompt_library` module with curated prompts in both languages,  
  - a `11_agents` module that introduces learners to agents and deeper workflows,  
  - practical “episodes” on conversation structure, debugging AI answers, and language/context effects,  
  - an `instructor_guide` module with crash‑course plans.  
- When adding or editing content:
  - keep episodes in `04-practical_usage` consistent (daily workflows, learning, checklist, debugging, conversation templates, language, context/history),  
  - ensure new ideas that affect many modules are reflected in both Hebrew and English where appropriate.  
- The root file `upgrades_and_suggetstions.md` is used to track:
  - ideas for future improvements,  
  - planned refinements to modules,  
  - notes on what worked well or needs polish.  
- Before introducing new structural concepts (e.g., new episode types or helper tools), consider:
  - whether they belong in an existing module (e.g., 03, 10, 11, or the instructor guide),  
  - how they will appear to a non‑technical learner encountering the crash‑course for the first time.

---

## 10. Agents working inside this repo

- Module `11_agents` is where **learners** are introduced to the idea of agents and how to use them safely and productively.  
- **Agents themselves** (like you) must always follow the rules in this `AGENTS.md`, even when they are helping to edit or refine the `11_agents` module and its lessons.
