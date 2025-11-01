# 1. โหลดข้อมูล

df <- read.csv("Housing.csv")
mean(complete.cases(df)) # ตรวจสอบ NA

set.seed(42)

id <- sample(1:nrow(df), size = 0.7 * nrow(df), replace = FALSE)
train_df <- df[id, ]
test_df <- df[-id, ]

# 2. แปลงคอลัมน์จัดกลุ่มให้เป็น Factor อย่างชัดเจน
train_df$mainroad <- as.factor(train_df$mainroad)
train_df$guestroom <- as.factor(train_df$guestroom)
train_df$basement <- as.factor(train_df$basement)
train_df$hotwaterheating <- as.factor(train_df$hotwaterheating)
train_df$airconditioning <- as.factor(train_df$airconditioning)
train_df$prefarea <- as.factor(train_df$prefarea)
train_df$furnishingstatus <- as.factor(train_df$furnishingstatus)

# แปลงคอลัมน์ใน test_df
test_df$mainroad <- as.factor(test_df$mainroad)
test_df$guestroom <- as.factor(test_df$guestroom)
test_df$basement <- as.factor(test_df$basement)
test_df$hotwaterheating <- as.factor(test_df$hotwaterheating)
test_df$airconditioning <- as.factor(test_df$airconditioning)
test_df$prefarea <- as.factor(test_df$prefarea)
test_df$furnishingstatus <- as.factor(test_df$furnishingstatus)


# 3. สร้างโมเดลและประเมินผล
lm_model <- lm(price ~ ., data = train_df)

# ทำนายผล (สร้างตัวแปร p)
p <- predict(lm_model, newdata = test_df)

# คำนวณ MAE (ใช้ตัวแปร p)
mae <- mean(abs(p - test_df$price))

# แสดงผลสรุป
summary(lm_model)
print(mae)