# How to run INVESTIQ (without errors)

## Option 1: Run everything (recommended)

From the project root (**INVESTIQ** folder):

```bash
npm start
```

Or double‑click **`run.bat`**.

This opens two console windows (Backend on port 3001, Loan app on port 3002). Close those windows to stop the servers.

---

## Option 2: Run each part in a separate terminal

**Terminal 1 – Backend**

```bash
cd Finanace-Planner/backend
npm start
```

(Runs on http://localhost:3001; uses `PORT=3001` if you set it.)

**Terminal 2 – Loan app**

```bash
cd Finanace-Planner/loan
npm start
```

(Runs on http://localhost:3002.)

---

## What was fixed

- **Start scripts** use `node server.js` instead of `nodemon`, so you avoid the Windows “spawn EPERM” error. Use `npm run dev` in each folder if you want nodemon.
- **MongoDB** is optional: if it’s not running, you’ll see a short message and the app still works (Gemini API and UI). For save/history, run MongoDB on `localhost:27017`.
- **One command to run both**: `run.bat` (or `npm start`) starts backend and loan in separate windows without using `concurrently`.

---

## URLs

| Service   | URL                      |
|----------|---------------------------|
| Loan app | http://localhost:3002    |
| Backend  | http://localhost:3001    |
