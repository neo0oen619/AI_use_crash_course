## How a large language model learns to “continue text”

### What happens in training (high‑level view)

During training, the model sees, again and again:

- A partial piece of text, for example:  
  “This morning, a 35‑year‑old person came in with…”
- The real continuation that followed in the original text.

It tries to guess the continuation, gets it wrong, adjusts its internal parameters a tiny bit, and repeats this process billions of times.

In the end:
- it learns which tokens (pieces of text) tend to appear together,
- and what “reasonable” sentences and answers look like in the language.

### Important to remember

- It learns **patterns of text**, not “deep truth about the world”.  
- If it saw mostly good, accurate text, its answers will tend to be better.  
- If some of the text it saw was wrong or biased, that can show up in its answers too.

### Exercise

Ask the AI:

> “Without formulas, explain how a large language model learns to predict the next token.  
> Use everyday examples.”

Compare its explanation to what you read here:
- What was clearer in its explanation?  
- What would you explain differently?

