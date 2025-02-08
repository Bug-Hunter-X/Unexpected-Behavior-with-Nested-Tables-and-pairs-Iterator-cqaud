# Lua Nested Table Iteration Bug

This repository demonstrates a common error when iterating over nested tables in Lua using the `pairs` iterator.  The `pairs` iterator doesn't guarantee a specific iteration order, which can lead to unexpected results if you modify the table during iteration.

The `bug.lua` file contains code that attempts to traverse and print a nested table.  However, the output may vary across different Lua implementations because of the unpredictable order of `pairs`.

The `bugSolution.lua` file provides a solution using a depth-first search approach to ensure predictable table traversal, making the output consistent regardless of the Lua implementation.