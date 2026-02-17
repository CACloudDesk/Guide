# How to put this project on GitHub

Git is already set up in this folder and the first commit is done. Follow these steps to push to GitHub.

---

## 1. Create a GitHub account (if you don’t have one)

- Go to **https://github.com** and sign up.

---

## 2. Create a new repository on GitHub

1. Log in to GitHub.
2. Click the **+** (top right) → **New repository**.
3. Fill in:
   - **Repository name:** e.g. `cacloud-guide` or `Guide`
   - **Description:** (optional) e.g. `CA Cloud Desk Help Guide`
   - **Public** or **Private** as you prefer.
   - **Do not** check “Add a README” or “Add .gitignore” (the project already has files).
4. Click **Create repository**.

---

## 3. Connect this folder to GitHub and push

GitHub will show you commands; you can use these (replace `YOUR_USERNAME` and `REPO_NAME` with your GitHub username and repo name):

```bash
cd /Users/saurabhbhardwaj/Desktop/Guide

# Add GitHub as "origin" (use the URL from your new repo page)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Push your code (first time)
git push -u origin main
```

Example: if your username is `saurabhbhardwaj` and repo name is `cacloud-guide`:

```bash
git remote add origin https://github.com/saurabhbhardwaj/cacloud-guide.git
git push -u origin main
```

You may be asked to log in (browser or token). Use **GitHub → Settings → Developer settings → Personal access tokens** if you prefer a token instead of a password.

---

## 4. Use the project on another computer (e.g. home PC)

1. On that computer, install **Git**: https://git-scm.com/downloads  
2. Open Terminal (Mac/Linux) or Command Prompt / PowerShell (Windows).
3. Go to the folder where you want the project, then run:

```bash
git clone https://github.com/YOUR_USERNAME/REPO_NAME.git
cd REPO_NAME
```

4. Open `index.html` in a browser, or open the folder in Cursor/VS Code.

---

## 5. After you change something (on any computer)

```bash
git add .
git commit -m "Short description of what you changed"
git push
```

On the other computer, get the latest version with:

```bash
git pull
```
