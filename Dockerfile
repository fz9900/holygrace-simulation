# ===============================
# 1️⃣ Base Image
# ===============================
FROM python:3.11-slim

# ===============================
# 2️⃣ Environment Variables
# ===============================
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    FLASK_APP=xsg \
    FLASK_RUN_HOST=0.0.0.0 \
    FLASK_RUN_PORT=8080

# ===============================
# 3️⃣ Working Directory
# ===============================
WORKDIR /app

# ===============================
# 4️⃣ Install Dependencies
# ===============================
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# ===============================
# 5️⃣ Copy Application Code
# ===============================
COPY . /app/

# ===============================
# 6️⃣ Expose Port (Back4App uses 8080)
# ===============================
EXPOSE 8080

# ===============================
# 7️⃣ Start Command
# ===============================
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
