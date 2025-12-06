## Tokens and the context window

### What is a token?

A token is a small piece of text that the model works with:
- sometimes a whole word,  
- sometimes part of a word,  
- sometimes punctuation.

The model does not “see words” like we do; it sees a sequence of tokens.

### What is the context window?

Every model has a limit on how many tokens it can “keep in mind” at once:
- system instructions,  
- everything you have written so far,  
- and everything the model has already answered.

All of that together is the **context window**.

### Why does it matter?

- If the conversation is short – everything you said is still inside the window.  
- If the conversation is very long – some of the earliest messages may be cut off and disappear from the model’s view.  
- This is one main reason the model sometimes “forgets” things you mentioned at the beginning.

### Short exercise

Ask the AI:

> “Explain in simple English what a context window is in a language model, and why it matters for long conversations.”

See whether its explanation fits with what you understood here.

