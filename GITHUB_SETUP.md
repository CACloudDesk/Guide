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

**Example:** if your username is `johndoe` and repo name is `cacloud-guide`:

```bash
git remote add origin https://github.com/johndoe/cacloud-guide.git
git push -u origin main
```

- If GitHub asks to log in, use your GitHub username and a **Personal access token** (not your password).  
  Create a token: **GitHub → Settings → Developer settings → Personal access tokens → Generate new token**.
- If the branch on GitHub is `master` instead of `main`, use:  
  `git push -u origin main:master`  
  or rename locally:  
  `git branch -M master` then `git push -u origin master`.

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
| `remote origin already exists` | Use: `git remote set-url origin https://github.com/YOUR_USERNAME/REPO_NAME.git` then `git push -u origin main` |
| Authentication failed | Use a **Personal access token** instead of password when Git asks for credentials. |
| `failed to push some refs` | Run `git pull origin main --rebase`, then `git push -u origin main`. |
| Wrong files committed | Edit or add to `.gitignore`, then `git add .` and `git commit -m "Update .gitignore"` and `git push`. |
