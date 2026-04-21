# ask CLI tool

A lightweight Bash command-line tool that sends prompts to an OpenAI-compatible LLM API using curl and jq.

## Features
- Accepts command-line arguments
- Supports piped input
- Supports both combined
- Uses environment variables
- Minimal dependencies

## Requirements
- bash
- curl
- jq

## Environment Variables
- ASK_API_URL
- ASK_MODEL
- ASK_API_KEY

## Usage

### Basic
./ask "What is Linux?"

### Multiple arguments
./ask "Establishment dates of" "Turkey" "Japan"

### Piped input
echo "Explain recursion" | ./ask

### Combined
echo "Give a short example too." | ./ask "What is recursion?"

## Limitations
- Requires internet connection
- Depends on API availability

## License
MIT License
