## Safety layers and training gaps

### Safety layers

To reduce harmful or dangerous answers, developers add:

- training steps that teach the model what **not** to say,  
- external filters that examine questions and answers,  
- System instructions that emphasize safety (no violence, self‑harm, illegal content, etc.).

### Gaps in training

Training is never perfect:
- the model might see many short conversations,  
- but very few very long ones,  
- or very few examples of rare situations.

In areas with fewer examples:
- behavior can be less predictable,  
- in both accuracy and safety.

### Very long conversations

At very large context sizes (hundreds of thousands of tokens):
- the model may operate in a range where it was rarely tested,  
- safety and censorship behavior may be less reliable,  
- memory of the beginning of the conversation may be very weak or gone.

### What to do in practice

- Don’t rely on one endless chat for sensitive topics.  
- From time to time:
  - write your own short summary,  
  - start a new chat,  
  - paste only the summary.

This keeps the context focused and easier to reason about, for both you and the AI.

