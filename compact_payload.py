#!/usr/bin/env python3
"""compact_payload.py – compact JSON/DOM text and enforce token budget.
Usage: python compact_payload.py <input_file> [--max-tokens N]
"""
import sys, argparse, re, json

parser = argparse.ArgumentParser(description='Compact a DOM/JSON payload and respect token budget')
parser.add_argument('input_file', help='Path to input text file')
parser.add_argument('--max-tokens', type=int, default=1500, help='Maximum token budget')
args = parser.parse_args()

with open(args.input_file, 'r', encoding='utf-8') as f:
    data = f.read()
# simple whitespace collapse and strip HTML tags
clean = re.sub(r'<[^>]+>', ' ', data)
clean = re.sub(r'\s+', ' ', clean).strip()

tokens = len(clean) // 4
if tokens > args.max_tokens:
    print(f'Error: token count {tokens} exceeds max {args.max_tokens}', file=sys.stderr)
    sys.exit(2)
print(clean)
