"""
Docstring for flickering-snowglobe

High above Tinselwick, the Great Snowglobe atop Sprucetop Tower is supposed to glow in smooth, gentle patterns, a steady orchestra of magical pulses that keeps the Festival of Everlight in harmony.

Each moment, the Snowglobe emits a tiny pulse:
- '.' for a short flicker  
- '-' for a long shimmer  
- '*' for a bright spark  

Normally these pulses form long, stable bands of the same type. But since the Starshard Bauble fled, the glow has begun to stutter. breaking into many short, uneven chunks.

Tilda Baublenose has captured a log of the Snowglobe's pulses as a single string. She wants to know how many stable segments the Snowglobe's glow has fractured into.

A stable segment is defined as a maximal contiguous sequence of the same pulse character.
For example, the sequence "..--***.-" is broken into the segments:
* ".."
* "--"
* "***"
* "."
* "-"
a total of 5 stable segments.

Your task is to analyze the Snowglobe's flicker log and determine how many stable segments it contains.

The input has the following format:
The first line contains a single integer N, the length of the pulse string S.
The second line contains the pulse string S, which consists of the characters '.', '-', and '*'.

Print a single integer — the number of stable segments in the pulse string.

1 ≤ N ≤ 10^6
"""

