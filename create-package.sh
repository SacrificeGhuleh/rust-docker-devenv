#!/bin/sh

set -ex

if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

NAME=$1
mkdir -p rust
cd rust
cargo new $NAME --bin

cd ..

PROJECT_NAME="rust/$NAME/Cargo.toml"
JSON_FILE=".vscode/settings.json"

# Check if project.json exists, if not, create it with an empty projects array
if [ ! -f "$JSON_FILE" ]; then
  echo '{"rust-analyzer.linkedProjects": []}' > "$JSON_FILE"
fi

# Use Python to update the JSON file with the new project name, avoiding duplicates
python3 - <<END
import json

project_name = "$PROJECT_NAME"
json_file = "$JSON_FILE"

# Read the existing JSON file
with open(json_file, 'r') as file:
    data = json.load(file)

if project_name not in data['rust-analyzer.linkedProjects']:
    data['rust-analyzer.linkedProjects'].append(project_name)

    with open(json_file, 'w') as file:
        json.dump(data, file, indent=4)

    print(f"Project '{project_name}' has been added to {json_file}")
else:
    print(f"Project '{project_name}' already exists in {json_file}")
END
