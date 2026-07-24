# Push this prepared repository to GitHub

The local repository is already initialized and committed. Its intended remote is:

```text
https://github.com/hwillGIT/architecture-of-deep-reading.git
```

## Option A — Use the Git bundle

```bash
git clone architecture-of-deep-reading.bundle architecture-of-deep-reading
cd architecture-of-deep-reading
git remote set-url origin https://github.com/hwillGIT/architecture-of-deep-reading.git
git push -u origin main
```

## Option B — Use the files ZIP

```bash
unzip architecture-of-deep-reading-files.zip
cd architecture-of-deep-reading
git init -b main
git add .
git commit -m "Archive Architecture of Deep Reading poster series"
git remote add origin https://github.com/hwillGIT/architecture-of-deep-reading.git
git push -u origin main
```

If the GitHub repository was initialized with a README or other commit, reconcile histories before pushing:

```bash
git pull origin main --allow-unrelated-histories
# Resolve any README conflict, commit, then push.
git push -u origin main
```
