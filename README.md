# 找到你落腳行星｜正式上線版

這個版本使用 Vercel + PostgreSQL（例如 Supabase Database）保存資料。

## 必要環境變數
- DATABASE_URL：PostgreSQL 連線字串
- ADMIN_PASSWORD：管理員後台密碼

## 資料庫初始化
把 `schema.sql` 貼到你的 PostgreSQL / Supabase SQL Editor 執行。

## 部署
將此資料夾上傳到 GitHub，使用 Vercel Import Project 部署，並在 Project Settings → Environment Variables 設定上面兩個變數。

正式網址的前台是 `/`，管理後台是 `/admin.html`。

注意：目前管理員頁面需要另外改成呼叫 `/api/admin`；若要直接使用，請將 admin.html 中的資料讀取改為 API 版本。
