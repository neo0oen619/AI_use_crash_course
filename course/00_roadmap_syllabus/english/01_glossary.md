## Glossary – Core Terms in This Course

Short, simple explanations – not formal definitions.

### Large Language Model (LLM)

A type of AI that has been trained on huge amounts of text and learned to predict the next token (piece of text).  
It does not “understand” like a human, but it can generate text that looks smart and coherent.

### Token

A small unit of text that the model works with (often part of a word, sometimes a whole word or punctuation).  
Models have a limit on how many tokens they can handle in one conversation (input + output).

### Context / Context Window

All the text the model “sees” right now:  
system instructions, your messages, and the model’s previous replies.  
The maximum size of this window is limited (e.g., 8K, 32K, 200K tokens).

### Truncation

When a conversation becomes longer than the allowed context window, the system has to cut off older parts (usually from the beginning).  
This means the model may forget important information that was said early in the conversation.

### Prompt / Prompt Engineering

The text you give the model as an instruction.  
Prompt engineering is the skill of writing prompts that specify:
- who the AI should “be” (role / persona),
- what the task is,
- important context,
- the desired format of the answer.

### Hallucination

When the model generates information that sounds confident and detailed, but is simply wrong (facts, references, explanations).  
You should always double‑check important information.

### Safety / Censorship Layers

Rules and filters that try to prevent dangerous or inappropriate outputs (e.g., self‑harm instructions, violence).  
Sometimes they are too strict, sometimes not strict enough, especially in very unusual or very long conversations.

### Long Context

Some newer models can handle very long conversations or documents (hundreds of thousands of tokens).  
This is powerful, but:
- the behavior at the extreme limits is not always well tested,
- safety behavior and memory can be less reliable at those extremes.

### Agent

Agent – a configured role for the model with a stable purpose, tools and style (see Module 11).  
It can also be “one agent/mind with multiple perspectives” inside a single chat, instead of many separate bots.
