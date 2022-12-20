# @backendstuff's Elixir Basics

Repository for code produced by following along Jacob Luetzow's ([YouTube @backendstuff](https://www.youtube.com/@backendstuff)) 
videos from the 
[Elixir Basics](https://www.youtube.com/playlist?list=PL2Rv8vpZJz4w7Sm9STyZvoY0JAKUk_JOB) playlist.

Full repository by [@acobluetzow](https://github.com/jacobluetzow) can be
found at [acobluetzow/elixir_basics_solutions](https://github.com/jacobluetzow/elixir_basics_solutions)

## Installation

I decided to use a different approach compared to Jacob's.
Instead of installing it locally I decided to use the VS Code
`Dev Containers: Add Dev Container Configuration Files...` wizard, where I
chose the option that installed Elixir, Phoenix Framework and PostgreSQL.
This is a nice base to start customizing the Docker setup for this tutorial.

### Prerequisites

- Docker `20.10.21`
- Docker Compose `2.13.0`
- VS Code `1.74.1`
- VS Code `Dev Containers` (id: `ms-vscode-remote.remote-containers`)
extension `0.266.1`

### Configuration

I recommend to use VS Code to clone the repository into a named volume
`workspaces`.
If you decide to clone without creating the volume, then Docker Compose will
make a volume with a semi-randon name where your code will go, and I haven't
tested if it persists after system reboot. Besides, using a named volume will
make it easier to backup your code if you decide to do so.

## Elixir's Mix for beginners

### Create project

To create a new project with the name `blork`, execute the following from the
repository root:
```
mix new blork
```

### First run: compile and run Elixir project

Change directory to the newly generated project and compile/run it by
executing:
```
cd blork
iex -S mix
```
this will start the elixir shell `iex` with everything we need to call the
project functions.

### Getting help

Get module information/help for `Blork` by executing, with iex shell:
```
h Blork
```

Get documentation for function `Blork.hello` by executing, with iex shell:
```
h Blork.hello
```
The documentation gives an example on how to execute `Blork.hello` as well as
what it will return (an Atom).

Execute with iex:
```
Blork.hello()
```
to see this in action.

### Public/private functions

If we ever need to see all public functions for the module, we can use (iex)
```
exports Blork
```

If we ever need to make a private function we can define it with `defp` (see
[`blork.ex`](blork/lib/blork.ex)).

### Mix Compile

Exit iex by Ctrl+C twice and from the `blork` project and execute
```
mix compile
iex -S mix
```
to compile project and run iex.

### Mix help

With regular shell:
```
mix help
```
which gives you a list of all the commands you can run with mix.

### Mix test

With regular shell
```
mix test
```
will run all defined tests.

### Mix get defined dependencies

With regular shell:
```
mix deps.get
```
to download all dependencies.

## Numbers and math operations in Elixir

Relevant code should be inside the [numbers](./numbers/) folder.

### Defining functions

Functions need to be defined inside modules, else they won't be able to
compile.

### export ...

Running `exports BasicMath` in iex will at time of writing this README return:
```
add/2
```
which shows the public function contained inside
[basic_math.ex](./numbers/lib/basic_math.ex) as well as the function arity,
arity being a fancy way of saying how many arguments the function accepts.

### Recompile

Instead of doing Ctrl+C twice and recompile on the OS shell, you can do it in
iex by running:
```
recompile
```

## Strings in Elixir

Strings are encoded in UTF-8 unless you use a Windows terminal, in that case
you will need to customize the terminal environment.
But it's irrelevant to me so it won't be added to the README

### Define strings

Regular strings are defined as:
```
"Hi!"
```

### Concatenate strings

Concatenate strings by executing (iex):
```
"Welcome to" <> " " <> "Backend stuff"
```

### String interpolation

There are a few ways to use string interpolation. 
```
"6 * 7 = #{6 * 7}"
# "6 * 7 = 42"
```
