# Chronoir

Benchmark library for Noir

### Requirements
- Docker

### Steps for an example program

1. Launch container and run console inside it.
   1. `docker build --platform=linux/amd64 -t chronoir .`
   2. `docker run -it --rm chronoir`
2. Create example program.
   1. `nargo new example`
   2. `cd example`
3. Generate proof.
   1. `nano Prover.toml` > Insert values
   2. `nargo execute`
   3. `bb prove -b target/example.json -w target/example.gz -o target/proof`
4. Verify proof.
   1. `bb verify -k ./target/vk -p ./target/proof`
