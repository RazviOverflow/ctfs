# LootStash
A giant stash of powerful weapons and gear have been dropped into the arena - but there's one item you have in mind. Can you filter through the stack to get to the one thing you really need?

# Solution
Simple strings will do.

```
rabin2 -zzz stash | grep HTB
118 0x00003c50 0x00003c50  27  28 (.rodata) ascii HTB{n33dl3_1n_a_l00t_stack}
```

Flag: HTB{n33dl3_1n_a_l00t_stack}