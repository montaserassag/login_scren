# lap0

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




# 🚀 نموذج تسجيل دخول تفاعلي بـ Flutter

نموذج تسجيل دخول تفاعلي، حديث، ومتجاوب بالكامل مبني باستخدام إطار عمل Flutter. يوضح هذا المشروع أفضل الممارسات في تصميم واجهة المستخدم وتجربة المستخدم (UI/UX)، التحقق من صحة البيانات (Form Validation)، وإدارة الحالة (State Management) في تطبيقات Flutter.

## ✨ الميزات الأساسية

* **تحقق صارم من صحة البيانات:** التحقق الدقيق من البريد الإلكتروني (التأكد من وجود علامتي `@` و `.`) ومتطلبات طول كلمة المرور.
* **تصميم متجاوب:** استخدام `Center` و `SingleChildScrollView` مع `ConstrainedBox` لضمان ظهور الواجهة بشكل مثالي ومريح للعين على شاشات الهواتف، الأجهزة اللوحية، والويب، مع تفادي أخطاء الشاشة عند ظهور لوحة المفاتيح.
* **عناصر واجهة تفاعلية:** * زر إظهار/إخفاء كلمة المرور.
  * تأثيرات التموج البصرية (Ripple Effects) عند النقر على النصوص باستخدام `InkWell` (مثل رابط "نسيت كلمة المرور؟").
* **تنسيق عصري:** استخدام `InputDecorationTheme` مخصص، وأزرار `ElevatedButton` جذابة للإجراءات الأساسية (مثل الدخول)، وأزرار `OutlinedButton` للإجراءات الثانوية (مثل مسح الحقول).
* **إدارة الذاكرة بفعالية:** التخلص الآمن (Disposal) من متحكمات النصوص `TextEditingController` عند إغلاق الشاشة لمنع استنزاف ذاكرة الجهاز (Memory Leaks).

## 🛠️ التقنيات المستخدمة

* **إطار العمل:** [Flutter](https://flutter.dev/)
* **لغة البرمجة:** Dart

## 🚀 كيفية تشغيل المشروع

لتشغيل وتجربة هذا المشروع محلياً على جهازك، اتبع الخطوات التالية:

### المتطلبات المسبقة
تأكد من تثبيت بيئة عمل Flutter على جهازك. إذا لم تكن قد قمت بتثبيتها بعد، يمكنك اتباع [دليل التثبيت الرسمي لـ Flutter](https://docs.flutter.dev/get-started/install).
