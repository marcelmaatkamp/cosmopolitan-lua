# cosmopolitan lua
This repository builds the lua port to https://github.com/jart/cosmopolitan from https://github.com/ahgamut/lua (branch: "cosmopolitan") with docker container marcelmaatkamp/cosmopolitan:1.0 and generates marcelmaatkamp/cosmopolitan-lua:1.0

# build
This builds generates /usr/local/bin/lua.exe and runs it in marcelmaatkamp/cosmopolitan-lua:1.0
```
$ docker-compose up --build
cosmopolitan-lua_1  | Lua 5.4.2  Copyright (C) 1994-2020 Lua.org, PUC-Rio
```

# usage
```
% docker run --rm -ti docker.io/marcelmaatkamp/cosmopolitan-lua:1.0
Lua 5.4.2  Copyright (C) 1994-2020 Lua.org, PUC-Rio
> (1+2)*(3+4)
21
```
