## Safety layers and censorship – and why it can feel strange

### 1. What are safety layers?

Beyond the “brain” of the model (predicting the next tokens), there are extra mechanisms that try to protect:

- Training the model **not to answer** harmful requests  
  (violence, self‑harm, crime, instructions for hurting others, etc.).  
- Adding **external filters** that check:
  - what you ask,
  - what the model answers,
  - whether it fits the product’s policy.  
- Using System instructions that emphasize:
  - safety,
  - ethics,
  - usage rules.

These layers do not “hate you” – they are just trying to catch potentially dangerous situations.

---

### 2. How does this feel from the user’s side?

From your point of view, this can look like:

- The AI **refuses to answer**, even when your question feels reasonable.  
- It sometimes gives very general, cautious or repetitive “safety language”.  
- Sometimes a **problematic or weak** answer still slips through – no system is perfect.

This can create two unhealthy extremes:

- “You can’t trust it at all, it just censors.”  
- “If it answered, it must be correct and safe, no need to think.”

The goal of this module is to understand **how it works**, so you can react in a more mature way:

- see when safety is appropriate,  
- see when it might be over‑strict,  
- and know what to do about it.

---

### 3. Very long conversations

As a conversation becomes **very long** (hundreds or thousands of turns):

- Some safety instructions may already be *outside the context window*  
  (see Module 03 on context window and truncation).  
- The model has to “summarize for itself” what matters – and its summary may not match yours.  
- Responses can become less stable:
  - sometimes extremely cautious,
  - sometimes looser,
  - sometimes simply off‑topic.

In long chats it is wise to:

- pause occasionally,  
- summarize:
  - what you have learned,
  - what is important to carry forward,
  - what can be dropped,  
- then start a new chat with a short summary instead of the entire history.

---

### 4. How one word can “lock” a conversation

When you write a prompt, two things happen at the same time:

1. **The model itself** tries to understand what you want and generate a reasonable answer.  
2. **Safety / policy layers** try to classify:  
   “Is this okay? Dangerous? An attempt to bypass rules? Related to a sensitive area?”

They look at the **content**, the **context**, and the **wording**.

Sometimes a **single word or phrase** can flip an internal “switch”, for example:

- “Analyze this text”  
  → sounds like a request for explanation/analysis.

- “Diagnose this person”  
  → may be classified as a request for a **clinical/professional diagnosis**,  
    and the safety layers are required to be much more restrictive.

- Words like:
  - “hack”, “weapon”, “exploit”,  
  - “full psychological profile of a specific person”,

have often appeared in problematic contexts, so they raise the “risk level”.

This does not mean these words are **always** forbidden, but:

- they can make the system much more conservative,  
- they can trigger defensive or moralising answers,  
- they can lead to messages like “I can’t help with that”.

---

### 5. Legitimate rephrasing vs. trying to jailbreak

There is a big difference between:

- **Deliberately** trying to bypass safety rules in order to get harmful / illegal content, and  
- Trying to rephrase a **legitimate learning question** that was over‑blocked because of wording.

In this course, we do **not** aim to “break” the system.
We *do* want to learn how to express a **safe educational intent** clearly.

In other words:

> Not: “How do I trick the censorship?”  
> But: “How do I describe what I want to learn  
>  in a clear, safe way so the model can answer?”

---

### 6. Working smart when a chat feels “stuck”

Imagine you get:

- “I can’t help with that,” or  
- a long safety/moral lecture that doesn’t match what you meant.

Instead of fighting the system, try these four steps:

#### Step 1 – Ask yourself what you really wanted

Helpful questions:

- Did I want **general knowledge**? (theory, research, examples)  
- Did I accidentally ask for a **personal/clinical/dangerous action**?  
- Am I pushing professional responsibility onto the model?

#### Step 2 – Remove loaded words

Instead of:

- “diagnose”, “give me a full psychological profile”, “tell me what treatment to use”,

try:

- “analyze this text in general terms”,  
- “explain how researchers / professionals *usually* think about X”,  
- “give me general examples (not personal advice).”

The principle:

- replace requests for **professional intervention**  
  with requests for **general conceptual/educational explanation**.

#### Step 3 – State your educational intent

Sometimes it helps to say explicitly:

> “This request is for learning / research only.  
>  I am not asking for diagnosis or personal treatment,  
>  just general explanation and examples.”

This does not guarantee that all answers will be allowed, but:

- it makes your intent clearer,  
- it moves the system into “explain and teach” mode rather than “do something”.

#### Step 4 – Start a new chat if the context is “contaminated”

If you have:

- already tried several “edgy” phrasings, and  
- received multiple refusals or safety‑heavy answers,

the conversation history may already be “coloured” by those attempts.

In that case it is often better to:

1. Stop.  
2. Open a new chat.  
3. Begin with something like:

> “I want to learn about X in a general, educational way.  
>  Please avoid personal/clinical advice or extreme content,  
>  and focus on high‑level explanation and examples.”

---

### 7. Exercise: loaded wording vs. educational wording

1. Pick a **legitimate** topic (e.g., learning, time management, team cooperation).  
2. Write one **loaded** prompt using words like:
   - “diagnose”, “give me a profile”, “make them do…”.  
3. See how the model responds.  
4. Now write a second prompt:
   - same overall goal,  
   - without the loaded words,  
   - framed as a learning / understanding question.  
5. Compare the two answers:
   - What changed in tone?  
   - What changed in usefulness?  
   - Which version feels more responsible to you?

You can also try this meta‑prompt:

> “Here is a prompt I used and the answer I got.  
>  Please analyse which words in my prompt might trigger safety layers,  
>  and suggest a safer educational rephrasing that keeps my real intent.”

The aim is for you to leave this module with a **sense for language** –  
understanding how one word can “lock” a conversation,  
and how clearer, safer wording can unlock it  
without trying to bypass safety rules.

