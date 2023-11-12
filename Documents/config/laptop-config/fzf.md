
# Fzf Command Cheat Sheet

Fzf is a powerful command-line tool for interactive file search and selection. Here are some common commands that you can use with fzf on Ubuntu:

1. **File Search:**
   ```bash
   find . | fzf
   ```

2. **Process Search::**
   ```bash
   ps aux | fzf
   ```

3. **File with Vim:**
   ```bash
   vim $(fzf)
   ```

4. **Change Directory:**
   ```bash
    cd $(find ~/ -type d | fzf)
   ```

5. **History Search:**
   ```bash
   history | fzf
   ```

6. **Git Branch Selection:**
   ```bash
    git branch | fzf
   ```

7. **Terminate Process::**
   ```bash
    fzf | xargs kill
   ```



