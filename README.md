# ask CLI tool

A simple Bash CLI tool that sends prompts to an LLM API using curl and jq.

## Usage
./ask "your prompt"
echo "text" | ./ask "instruction"

## Requirements
- curl
- jq
- environment variables: ASK_API_URL, ASK_MODEL, ASK_API_KEY

