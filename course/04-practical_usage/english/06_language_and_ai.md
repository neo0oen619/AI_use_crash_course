## Why language matters when working with AI

We already talked about conversation structure and debugging answers.  
Here we focus on **why language itself matters so much**.

---

### 1. How language connects to how the model works

A language model does not think in concepts, but in **tokens** – small pieces of text.  
It learns patterns from huge amounts of text:
- which words and phrases tend to appear together,  
- what “typical” answers look like,  
- what a “reasonable” response sounds like.

So:
- small changes in wording can lead to **big changes** in the pattern the model recognizes,  
- typos can change the token and make it understand less well.

We humans also think a lot through language.  
The clearer we express ourselves, the more the AI can help us think clearly.

---

### 2. Hebrew vs English – data volume and “neurons”

There is **far more** text in English than in Hebrew in the world.  
During training:
- the model saw many more English examples,  
- and fewer Hebrew examples.

Roughly speaking:
- its “neurons” are better trained on English patterns,  
- in Hebrew it can still be good, but sometimes **less consistent**.

In practice, this can mean:
- very complex questions sometimes get richer answers in English,  
- technical instructions (config, libraries, error messages) are usually better expressed in English,  
- in Hebrew you may see more “quirks” – slightly odd phrasing producing odd behavior.

This doesn’t mean you should avoid Hebrew – just that it helps to **know the limitation**.

---

### 3. Why every word, typo, or sentence order matters

The model is sensitive to:
- key phrases (like “briefly”, “step by step”, “no jargon”),  
- “direction” signals (“think out of the box”, “be critical”, “list limitations”),  
- typos that change tokens.

Examples:
- “explain” vs “summarize” → very different style of answer.  
- “in up to 5 sentences” vs “write” → big impact on length.  
- “without technical terms” → pushes toward a different register.

Tip:

> “Before you answer, please restate in your own words what you think I’m asking for.”

This lets you fix the **prompt** (what you say), not just the answer.

---

### 4. Connecting inner thoughts to the words you type

Sometimes your internal feeling or idea is complex, but the text you write is short and vague.  
The model sees only the text, not your inner state.

You can use AI to turn vague thoughts into clearer language:

> “I feel confused about [topic].  
> I’ll write a few free‑form sentences,  
> then please help me turn them into:  
> – a clear statement of the problem,  
> – a list of key questions,  
> – and a first draft of an action plan.”

So you’re training both yourself and the AI to work with clearer language.

---

### 5. Smart use of Hebrew and English together

Some options:

- For “normal” conversations – Hebrew may feel more natural,  
  especially for summaries, planning, reflections.

- When something **doesn’t work well in Hebrew**:
  - describe the situation briefly in Hebrew,  
  - then ask the AI:

> “Help me write a good English prompt for this question,  
> then answer in both English and Hebrew.”

- Sometimes you can run the **same question** in English and Hebrew and compare the answers.

The key idea: language and wording have weight – you can **play with them** when things feel stuck.

---

### 6. How temperature, randomness, and config interact with language

Settings like:
- temperature (how “creative” the model is),  
- max_tokens (how long the answer can be),

interact with:
- the language you use,  
- the richness of training data in that language.

So in some languages or phrasings, answers may feel more “noisy”.

To reduce randomness:
- explicitly ask for “structured, step‑by‑step” answers,  
- set length constraints (“up to X sentences / bullets”),  
- ask the model to always list limitations and uncertainties.

---

### Exercise

1. Pick a real question you care about.  
2. Write a careful prompt in Hebrew and see the answer.  
3. Ask the AI:

> “Please translate my Hebrew prompt into the best English prompt you can.”

4. Run the English prompt and compare the answers:  
   - What is different?  
   - What do you learn about wording, language, and how the AI “thinks”?

