## Truncation and long conversations

### What happens when you cross the limit?

When a conversation grows beyond the maximum context size:
- the system must remove some of the text,  
- usually starting from the oldest messages.

That means:
- the first part of the conversation may **no longer be present** in what the model sees.

### Why is that a problem?

If, at the beginning of the conversation:
- you carefully defined your goal,  
- you gave important details about a situation, a person, or a project,

and later you drifted to other topics, then:
- those important early details might be gone from the context window,
- and the AI will answer as if you never wrote them.

### Very long conversations (huge context)

Newer models can hold very long conversations or documents.  
However:
- they are not always tested carefully at the extreme limits,  
- the behavior in those “far ranges” may be less stable and predictable.

### Exercise

1. Start a conversation by writing a detailed description of something that matters to you.  
2. Then continue talking about different topics for a while (even unrelated ones).  
3. After many messages, ask:

> “Please remind me briefly of the key facts / points I told you at the start of this conversation.”

Notice:
- What does it remember?  
- What seems to have been forgotten?

