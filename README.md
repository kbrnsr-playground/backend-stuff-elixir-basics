# @backendstuff's Elixir Basics

Repository for code produced by following along Jacob Luetzow's ([YouTube@backendstuff](https://www.youtube.com/@backendstuff)) 
videos from the 
[Elixir Basics](https://www.youtube.com/playlist?list=PL2Rv8vpZJz4w7Sm9STyZvoY0JAKUk_JOB) playlist.

## Installation

I decided to use a different approach compared to Jacob's.
Instead of installing it locally I decided to use the VS Code
`Dev Containers: Add Dev Container Configuration Files...` wizard, where I
chose the option that installed Elixir, Phoenix Framework and PostgreSQL so I
had a base to work with.

### Prerequisites

- Docker `20.10.21`
- Docker Compose `2.13.0`
- VS Code `Dev Containers` (id: `ms-vscode-remote.remote-containers`)
extension `0.266.1`

## Configuration

I recommend to use VS Code to clone the repository into a named volume with the name
`workspaces`. If you decide to clone without creating the volume, then Docker
Compose will make a volume with a semi-randon name and I haven't tested if it
persists after system reboot. Besides, using a named volume will make it easier
to backup your code if you decide to do so.