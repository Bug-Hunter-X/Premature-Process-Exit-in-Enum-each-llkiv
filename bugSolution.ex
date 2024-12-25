```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.map to avoid early termination
Enum.map(list, fn x ->
  if x == 3 do
    #Instead of terminating, do nothing or handle differently 
    :skipped
  else
    IO.puts(x)
    x
  end
end)

# Solution 2: Using a loop
for x <- list do
  if x == 3 do
    # Handle the case where x == 3
  else
    IO.puts(x)
  end
end

#Solution 3: Using a try-catch block (less common, but demonstrates control flow)
list = [1,2,3,4,5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three_found)
    end
    IO.puts(x)
  end)
catch
  :three_found -> IO.puts("Found 3 and continuing")
end
```