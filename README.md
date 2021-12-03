# cling
A docker container that boots into cling, the interactive C++ interpreter from the ROOT Project at Cern Switzerland https://root.cern/cling/ (also origin of the web http &amp; html). Built from latest Ubuntu binary.

## Usage

```bash
docker run --rm --interactive --tty masterxilo/cling
```

### to have access to your local filesystem within cling under `/host` 
```bash
docker run --rm --interactive --tty --volume /:/host masterxilo/cling
```

## Motivation
The official (?) ROOT image https://hub.docker.com/r/rootproject/root does not seem to include cling.
