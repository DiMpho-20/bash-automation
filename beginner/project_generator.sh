#!/bin/bash

# Check if user gave a project name

if [-z "$1"];then
	echo "Usage: ./project_generator.sh <project_name>"
	exit 1
fi

PROJECT_NAME=$1
BASE_DIR=~/python_projects
echo "Creating project: $PROJECT_NAME"

# Create folder structure

mkdir -p "BASE_DIR/$PROJECT_NAME"
cd  "$BASE_DIR/$PROJECT_NAME"

# Create virtual environment
python3 -m venv venv


# Create files
touch main.py
touch README.md

# Write basic content into main.py
echo "# $PROJECT_NAME" > main.py
echo "def main():" >> main.py
echo "    print('$PROJECT_NAME is running')" >> main.py
echo "" >> main.py
echo "if __name__ == '__main__':" >> main.py
echo "    main()" >> main.py

# Write README
echo "# $PROJECT_NAME" > README.md
echo "## How to run" >> README.md
echo "\`\`\`bash" >> README.md
echo "source venv/bin/activate" >> README.md
echo "python3 main.py" >> README.md
echo "\`\`\`" >> README.md

echo "✅ Project $PROJECT_NAME created at $BASE_DIR/$PROJECT_NAME"
echo "To get started:"
echo "  cd $BASE_DIR/$PROJECT_NAME"
echo "  source venv/bin/activate"
echo "  python3 main.py"
