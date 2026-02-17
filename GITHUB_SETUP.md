# Step-by-step: Put the CA Cloud Desk Guide on GitHub

Follow these steps in order. Git is already set up in this folder; you will stage all files, commit, create a repo on GitHub, then push.

---

## Step 1: Create a GitHub account (if needed)

1. Go to **https://github.com**
2. Sign up or log in.

---

## Step 2: Stage all guide files

Open **Terminal** (Mac/Linux) or **Command Prompt / PowerShell** (Windows) and run:

```bash
cd /Users/cacloud/Downloads/Guide

# Stage everything (all modified and new files)
git add .
```

To see what will be committed:

```bash
git status
```

---

## Step 3: Commit your work

```bash
git commit -m "Add full CA Cloud Desk Guide: Setup, HRMS, Billing, Task, pay details, and assets"
```

If Git asks you to set your name/email first (first time only):

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

Then run the `git commit` command again.

---

## Step 4: Create a new repository on GitHub

1. On GitHub, click the **+** (top right) → **New repository**.
2. Fill in:
   - **Repository name:** e.g. `cacloud-guide` or `Guide`
   - **Description:** (optional) e.g. `CA Cloud Desk Help & User Guide`
   - Choose **Public** or **Private**.
   - **Do not** check “Add a README”, “Add .gitignore”, or “Choose a license” (this project already has files).
3. Click **Create repository**.

---

## Step 5: Connect this folder to GitHub and push

GitHub will show a page with commands. Use these (replace `YOUR_USERNAME` and `REPO_NAME` with your actual GitHub username and repository name):

```bash
cd /Users/cacloud/Downloads/Guide

# Add GitHub as "origin" (one time only)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Push your code (first time; -u saves "origin main" as default for future git push)
git push -u origin main
```

**This project is linked to:** [https://github.com/CACloudDesk/Guide](https://github.com/CACloudDesk/Guide)

```bash
git remote add origin https://github.com/CACloudDesk/Guide.git
git push -u origin main
```

**If the branch on GitHub is `master` instead of `main`:**  
Use `git push -u origin main:master`, or run `git branch -M master` then `git push -u origin master`.

---

### Authentication: Git might not ask for a password

Git often does **not** show a “password” prompt in the terminal. It may:

- Open a **browser** for GitHub login, or  
- Use **saved credentials** (macOS Keychain, Windows Credential Manager), or  
- Use **SSH** if you added an SSH remote.

**To use a Personal access token (recommended):**

1. On GitHub: **Settings** → **Developer settings** → **Personal access tokens** → **Tokens (classic)** → **Generate new token**. Give it a name, choose an expiry, and tick **repo**.
2. Copy the token (you won’t see it again).

**Option A — Use the token in the URL (recommended):**  
Use your **personal GitHub username** (the account that can push to CACloudDesk/Guide), not the org name. Replace `YOUR_GITHUB_USERNAME` and `YOUR_TOKEN`:

```bash
git remote set-url origin https://YOUR_GITHUB_USERNAME:YOUR_TOKEN@github.com/CACloudDesk/Guide.git
git push -u origin main
```

Example: if your GitHub login is `johndoe` and your token is `ghp_xxxx...`:

```bash
git remote set-url origin https://johndoe:ghp_xxxx...@github.com/CACloudDesk/Guide.git
git push -u origin main
```

**Option B — Let Git prompt you:**  
Use the normal URL (`https://github.com/YOUR_USERNAME/REPO_NAME.git`). When you run `git push`, if Git asks for **username**, enter your GitHub username; if it asks for **password**, paste the **token** (not your GitHub password).  
If Git never asks, use Option A.

---

## Step 6: Confirm on GitHub

1. Refresh your repository page on GitHub.
2. You should see all your folders and files (e.g. `Module/`, `index.html`, `assets/`, etc.).

---

## Later: After you change something (on this or another computer)

**On the computer where you made changes:**

```bash
cd /Users/cacloud/Downloads/Guide
git add .
git commit -m "Short description of what you changed"
git push
```

**On another computer** (to get the latest version):

```bash
cd path/to/Guide
git pull
```

---

## Clone the project on a new machine

To get a copy of the guide on another computer:

1. Install **Git**: https://git-scm.com/downloads  
2. Run:

```bash
git clone https://github.com/YOUR_USERNAME/REPO_NAME.git
cd REPO_NAME
```

3. Open `index.html` in a browser or open the folder in Cursor/VS Code.

---

## Troubleshooting

| Issue | What to do |
|-------|------------|
| `Invalid username or token. Password authentication is not supported` | Use a **Personal access token** (never your GitHub password). Set the remote with: `git remote set-url origin https://YOUR_GITHUB_USERNAME:YOUR_TOKEN@github.com/CACloudDesk/Guide.git` then `git push -u origin main`. Use your **personal** GitHub username (the one that has access to the repo). |
| Git never asks for password | Use **Option A** in the Authentication section above: put your token in the remote URL, then `git push`. |
| `remote origin already exists` | Use: `git remote set-url origin https://github.com/YOUR_USERNAME/REPO_NAME.git` then `git push -u origin main` |
| Authentication failed | Use a **Personal access token** (not your GitHub password). Create one under GitHub → Settings → Developer settings → Personal access tokens. Use your **personal** username in the URL. |
| `failed to push some refs` | Run `git pull origin main --rebase`, then `git push -u origin main`. |
| Wrong files committed | Edit or add to `.gitignore`, then `git add .` and `git commit -m "Update .gitignore"` and `git push`. |
