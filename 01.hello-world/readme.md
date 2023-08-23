# Compile
```
ocamlc -o hello.byte hello.ml
```

# Run
```
./hello.byte
```

# Dune build system
## Configuration
- Create a `dune` file with:
```
(executable
 (name hello))
```

- Create a `dune-project` file
```
(lang dune 3.4)
```

## Build
```
dune build hello.exe
```

## Run
```
dune exec ./hello.exe
```

## Clean
```
dune clean
```