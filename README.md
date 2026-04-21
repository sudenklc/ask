cat > README.md << 'EOF'
# ask CLI tool

A simple Bash command-line tool that sends prompts to an LLM API using curl and jq.

## Features
- Supports command-line arguments
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
echo "Give example" | ./ask "What is recursion?"

## Limitations
- Requires internet connection
- Depends on API availability

## License
MIT License
EOF# ask CLI tool

A simple Bash CLI tool that sends prompts to an LLM API using curl and jq.

## Usage
./ask "your prompt"
echo "text" | ./ask "instruction"

## Requirements
- curl
- jq
- environment variables: ASK_API_URL, ASK_MODEL, ASK_API_KEY

