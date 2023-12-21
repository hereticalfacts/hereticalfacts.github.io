#!/usr/bin/env python3

import re

def replace_number_tags(markdown_text):
    counter = 1
    def replacer(match):
        nonlocal counter
        replacement = f"[[{counter}]]"
        counter += 1
        return replacement
    return re.sub(r'\[NUMBER\]', replacer, markdown_text)

with open("facts.md") as f:
    markdown_content = f.read()

new_markdown_content = replace_number_tags(markdown_content)

with open("facts_numbered.md", "w") as f:
    f.write(new_markdown_content)
