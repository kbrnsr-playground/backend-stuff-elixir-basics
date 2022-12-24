# Elixir Basics

Repository for code produced by following along Jacob Luetzow's
([YouTube @backendstuff](https://www.youtube.com/@backendstuff)) videos from
the
[Elixir Basics](https://www.youtube.com/playlist?list=PL2Rv8vpZJz4w7Sm9STyZvoY0JAKUk_JOB)
playlist.

The tutorial code authored by the content creator can be found in [`@jacobluetzow`](https://github.com/jacobluetzow)'s repos [`jacobluetzow/elixir_basics_solutions`](https://github.com/jacobluetzow/elixir_basics_solutions)

I decided to create the Mix umbrella project `elixir_basics` a few parts into
the video series and move all other Mix projects inside it.

Note on terms used in this document

* `shell` will refer to the host terminal, be it bash, zsh etc.
* `iex` will refer to the interactive Elixir shell.

## Installation

I decided to use a different approach compared to Jacob's.
Instead of installing elixir locally I decided to use the VS Code
`Dev Containers: Add Dev Container Configuration Files...` wizard, where I
chose the option that installed Elixir, Phoenix Framework and PostgreSQL.
This created a nice base to start customizing the Docker setup for this tutorial.

### Prerequisites

* Docker `20.10.21`
* Docker Compose `2.13.0`
* VS Code `1.74.1`
* VS Code `Dev Containers` (id: `ms-vscode-remote.remote-containers`)
extension `0.266.1`

### Configuration

Use VS Code to clone the repository into a named volume `workspaces`, you can
use other ways to get your code mounted into a Docker container, but most of
them have too many downsides compared to the advantages.
If you decide to clone without creating the volume, then Docker Compose will
make a volume with a semi-randon name where your code will go.

## Elixir's Mix for beginners

Relevant code can be found inside the [`elixir_basics/apps/blork`](elixir_basics/apps/blork) folder.

### Create project

To create a new project with the name `blork` , execute the following from `elixir_basics/apps` (`shell`):

```Shell
mix new blork
```

### First run: compile and run Mix project

Change directory to the newly generated project and compile/run it by
executing (`shell`):

```Shell
cd blork
iex -S mix
```

this will start `iex` with everything we need to call the project functions.

### Getting help

Get module information/help for `Blork` (`iex`):

```Elixir
h Blork
```

Get documentation for function `Blork.hello` (`iex`):

```Elixir
h Blork.hello
```

The documentation gives an example on how to execute `Blork.hello` as well as
what it will return (an Atom).

Execute (`iex`):

```Elixir
Blork.hello()
```

to see this in action.

### Public/private functions

If we ever need to see all public functions for the module (`iex`)

```Elixir
exports Blork
```

If we ever need to make a private function we can define it with `defp` (see
[`blork.ex`](blork/lib/blork.ex)).

### Mix Compile

Exit `iex` by Ctrl+C twice and from the `blork` project execute (`shell`)

```Shell
mix compile
```

to compile Mix project.

### Mix help

Execute (`shell`):

```Shell
mix help
```

which gives you a list of all the commands you can run with Mix.

### Mix test

Execute (`shell`):

```Shell
mix test
```

which will run all defined tests in Mix project.

### Mix get defined dependencies

Execute (`shell`):

```Shell
mix deps.get
```

to download all dependencies for Mix project.

## Numbers and math operations in Elixir

Relevant code can be found inside the [`elixir_basics/apps/numbers`](elixir_basics/apps/numbers) folder.

### Defining functions

Functions need to be defined inside modules, else they won't be able to
compile.

### Get function signatures

Running `exports BasicMath` in iex will at time of writing this README return:

```Elixir
add/2
```

which shows the public function contained inside
[basic_math.ex](elixir_basics/apps/numbers/lib/numbers/basic_math.ex) as well as the function arity,
arity being a fancy way of saying how many arguments the function accepts.

### Recompile

Instead of doing Ctrl+C twice and recompile with `shell` commands, you can do
it in `iex` by executing:

```Elixir
recompile
```

## Strings in Elixir

Strings are encoded in UTF-8 unless you use a Windows terminal, in that case
you will need to customize the terminal environment.
But it's irrelevant to me so I won't be added details on that to the README.

Relevant code can be found inside the [`elixir_basics/apps/all_strings`](elixir_basics/apps/all_strings) folder.

### Define strings

Regular strings are defined as:

```Elixir
"Hi!"
# "Hi!"
```

### Concatenate strings

Concatenate strings:

```Elixir
"Welcome to" <> " " <> "Backend stuff"
# "Welcome to Backend stuff"
```

### String interpolation

There are a few ways to use string interpolation:

```Elixir
"6 * 7 = #{6 * 7}"
# "6 * 7 = 42"
```

```Elixir
"Elixir can convert booleans to strings: #{true}"
# "Elixir can convert booleans to strings: true"
```

```Elixir
"And #{["lists", ",", "too!"]}"
# "And lists,too!"
```

We can't interpolate a function:

```Elixir
"But not a function: #{fn x -> x end}"
# ** (Protocol.UndefinedError) protocol String.Chars not implemented for
# #Function<42.3316493/1 in :erl_eval.expr/6> of type Function. This protocol is
# implemented for the following type(s): Atom, BitString, Date, DateTime, Float,
# Hex.Solver.Assignment, Hex.Solver.Constraints.Empty, Hex.Solver.Constraints.
# Range, Hex.Solver.Constraints.Union, Hex.Solver.Incompatibility, Hex.Solver.
# PackageRange, Hex.Solver.Term, Integer, List, NaiveDateTime, Time, URI,
# Version, Version.Requirement
#     (elixir 1.14.2) lib/string/chars.ex:3: String.Chars.impl_for!/1
#     (elixir 1.14.2) lib/string/chars.ex:22: String.Chars.to_string/1
#     iex:6: (file)
```

### Escape characters

```Elixir
"\"A\" is \#1st letter of the alphabet\n"
# "\"A\" is \#1st letter of the alphabet\n"
IO.puts("\"A\" is \#1st letter of the alphabet\n")
# "A" is #1st letter of the alphabet
# 
# :ok
```

### Multiline strings

```Elixir
"""
we can type
multiple lines
without escaping newline
"""
# "we can type\nmultiple lines\nwithout escaping newline\n"
IO.puts("""
we can type
multiple lines
without escaping newline
""")
# we can type
# multiple lines
# without escaping newline
# 
# :ok
```

## Linked-Lists in Elixir

Relevant code can be found inside the [`elixir_basics/apps/linked_lists`](elixir_basics/apps/linked_lists) folder.

### Basic list ops

Create empty list (`iex`):

```Elixir
[]
# []
```

Create list with single element (`iex`):

```Elixir
[1]
# [1]
```

Create list with multiple elements (`iex`):

```Elixir
[1, 2, 3]
# [1, 2, 3]
```

Add elements of two lists together (`iex`):

```Elixir
[1] ++ [2, 3]
# [1, 2, 3]
```

Prepend single element to elements of another list using `cons` (pipe) operator
(`iex`):

```Elixir
[1 | [2, 3]]
# [1, 2, 3]
```

Create list with mixed types (`iex`):

```Elixir
[1, :a, 2.0, "string"]
# [1, :a, 2.0, "string"]
```

### Head/tail notation

Seems very much like deconstructing in JavaScript

```Elixir
list = [1, 2, 3, 4, 5, 6]
# [1, 2, 3, 4, 5, 6]
list
# [1, 2, 3, 4, 5, 6]
[first, second | rest] = list
# [1, 2, 3, 4, 5, 6]
first
# 1
second
# 2
rest
# [3, 4, 5, 6]
```

## Pattern matching in Elixir

Relevant code can be found inside the [`elixir_basics/apps/pattern_matching`](elixir_basics/apps/pattern_matching) folder.

Atoms and equality (`iex`):

```Elixir
:saucer == :blork
# false
```

`=` is the match operator, not **assignment**!

1. Matches value on left side with value on right side
2. If it matches and left side includes a variable, then assign/rebind value from right side to variable.

In `iex`:

```Elixir
:saucer = :blork
# ** (MatchError) no match of right hand side value: :blork
#     (stdlib 4.1.1) erl_eval.erl:496: :erl_eval.expr/6
#     iex:6: (file)
```

Use pin operator `^` to compare without assignment/rebinding.

```Elixir
^s = :saucer
# ** (MatchError) no match of right hand side value: :saucer
#     (stdlib 4.1.1) erl_eval.erl:496: :erl_eval.expr/6
#     iex:8: (file)
s
# :blork
```

## Guards in Elixir

Relevant code can be found inside the [`elixir_basics/apps/guards`](elixir_basics/apps/guards) folder.

Guards are a way to expand pattern matching with complex checks.
Guards begin with the `when` keyword followed by boolean expressions. These
expressions must be pure functions, they must always return the same value for
a given input, they need to be `idempotent`. These expressions also need to
only return `true` or `false`

## Control flow structures in Elixir

Relevant code can be found inside the [`elixir_basics/apps/control_flow`](elixir_basics/apps/control_flow/) folder.

Control flow structures allow us to compare a given value against a pattern.

```Elixir
iex> if true do
...> "Blork says hi!"
...> end
# "Blork says hi!"
```

```Elixir
iex> unless true do
...> "this will not show"
...> end
# nil
```

```Elixir
iex> unless false do
...> "this will show"
...> end
# "this will show"
```

```Elixir
iex> if false do
...> "blork won't say hi"
...> end
# nil
```

```Elixir
iex> if false do
...> "blork won't say hi"
...> else
...> "blork left without saying goodbye"
# "blork left without saying goodbye"
```

```Elixir
iex> if false do
...> "blork won't say hi"
...> else
...> "blork left without saying goodbye"
# "blork left without saying goodbye"
```

## Credits

* Julien Corb for his article [Understand the pin “^" operator in Elixir (medium.com)](https://medium.com/@Julien_Corb/understand-the-pin-operator-in-elixir-a6f534d865a6)
