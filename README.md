# Elixir Enum.each Unexpected Termination

This repository demonstrates a common error in Elixir when using `Enum.each` with `Process.exit` inside the anonymous function.  The program intends to iterate over a list and print each element, but it terminates unexpectedly when a specific condition is met, leaving the remaining list elements unprocessed.  The solution shows how to avoid this premature termination using alternative approaches.

## Bug

The `bug.ex` file contains the problematic code. The `Process.exit` call within the `Enum.each` function will cause the entire process to terminate when the condition `x == 3` is true.  This behaviour is often unintentional and can be difficult to debug.