# GLOS Deploy Cheat Sheet

Steps for publishing updates to the kgeographer.org Pelican site.

---

## 📝 Edit Workflow

1. Edit or add Markdown files in `content/`
2. From the `main` branch:

    ```bash
    git add path/to/file.md
    git commit -m "Edit/add blog post"
    git push origin main
    ```

---

## 🚀 Deploy Workflow

1. Ensure you're on `main` and all content changes are committed and pushed.
2. Run the deploy script:

    ```bash
    ./deploy.sh
    ```

This will:
- Build the site via Pelican
- Temporarily store the generated `output/`
- Switch to `gh-pages`
- Copy files to the root of `gh-pages`
- Commit and push changes to GitHub Pages
- Switch back to `main`

---

## 🧹 Notes & Gotchas

- `.gitignore` is set to ignore:
    - `__pycache__/`
    - `.idea/`
    - `.pyc` files
- `deploy.sh` automatically removes temporary Python and IDE artifacts.
- If `git push` to `gh-pages` fails:
    - Run: `git pull --rebase origin gh-pages`
    - Then rerun `./deploy.sh`

---

## 🔁 Maintenance Tip

You can make this file invisible to Git:

```bash
echo "README_DEPLOY.md" >> .gitignore