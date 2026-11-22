# token-budget-guard-lite

Open‑source utilities to help you stay within a token budget when running local LLMs. This repo contains a minimal, fully‑functional PowerShell benchmark, a compact Python payload, and a small example dump.

## Features
- **Benchmark_Token_Cost.ps1** – measures token‑budget impact on inference cost.
- **compact_payload.py** – tiny script that demonstrates a low‑overhead prompt with a token limit.
- **examples/raw_dom_dump.txt** – sample output you can pipe into the scripts for a quick 30‑second test.

## Quick Start
```powershell
# Clone the repo
git clone https://github.com/truongminhphu315a-droid/token-budget-guard-lite.git
cd token-budget-guard-lite

# Run the benchmark (requires PowerShell 5+)
.\\Benchmark_Token_Cost.ps1

# Or run the Python payload
python compact_payload.py
```

## License
MIT – see the LICENSE file.

## Roadmap & Community Requests
We welcome contributions and ideas. Open an Issue or Discussion if you’d like new features, integrations, or have feedback on improving token‑budget management.
