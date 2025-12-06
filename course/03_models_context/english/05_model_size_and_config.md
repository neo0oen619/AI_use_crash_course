## Model size and configuration – how they affect answers

### Model size

- Larger models:
  - usually understand more complex contexts,  
  - give richer and more accurate answers,  
  - require more computing resources.
- Smaller models:
  - are faster and cheaper,  
  - are often enough for simple tasks (short summaries, translation, basic rewriting).

### Important configuration ideas (intuitive view)

- **Temperature** – how “creative” the answers are:
  - low → more predictable, stable answers,  
  - high → more variety and creativity, but also more risk of nonsense.

- **max_tokens** – how long the answer is allowed to be:
  - too low → answers get cut off mid‑sentence,  
  - higher → longer answers (sometimes longer than needed).

In many tools you don’t control these settings directly, but it helps to know they exist and why answers vary.

