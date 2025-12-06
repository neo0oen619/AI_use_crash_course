## Roles in the conversation – System / User / Assistant

### Who “talks” in the chat?

Behind the scenes of a chat with AI, there are three types of messages:

- **System** – general instructions to the model (role, tone, boundaries).  
- **User** – what you write.  
- **Assistant** – what the AI writes back.

The model sees all of these inside the context window.

### Why does this matter?

- System instructions often have a strong effect on the style and behavior of the AI.  
- If at the start of the chat you define a clear role (“you are a careful learning assistant…”), that tends to shape the conversation.  
- In a very long chat, those early System messages might be cut off, and the behavior can change.

### Practical tip

- At the start of a chat: define a clear role for the AI.  
- In long chats: from time to time, paste that role definition again to “refresh” it.

### Exercise

Run two conversations:

1. Without any role definition – just ask a question.  
2. With a role, for example:

> “You are a patient learning assistant.  
> You help me understand complex ideas in simple language.”

Compare:
- style,  
- level of detail,  
- level of caution.

