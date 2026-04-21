


# نموذج تسجيل دخول تفاعلي بـ Flutter

نموذج تسجيل دخول تفاعلي، حديث، ومتجاوب بالكامل مبني باستخدام إطار عمل Flutter. يوضح هذا المشروع أفضل الممارسات في تصميم واجهة المستخدم وتجربة المستخدم (UI/UX)، التحقق من صحة البيانات (Form Validation)، وإدارة الحالة (State Management) في تطبيقات Flutter.

## الميزات الأساسية

* **تحقق صارم من صحة البيانات:** التحقق الدقيق من البريد الإلكتروني (التأكد من وجود علامتي `@` و `.`) ومتطلبات طول كلمة المرور.
* **تصميم متجاوب:** استخدام `Center` و `SingleChildScrollView` مع `ConstrainedBox` لضمان ظهور الواجهة بشكل مثالي ومريح للعين على شاشات الهواتف، الأجهزة اللوحية، والويب، مع تفادي أخطاء الشاشة عند ظهور لوحة المفاتيح.
* **عناصر واجهة تفاعلية:** * زر إظهار/إخفاء كلمة المرور.
  * تأثيرات التموج البصرية (Ripple Effects) عند النقر على النصوص باستخدام `InkWell` (مثل رابط "نسيت كلمة المرور؟").
* **تنسيق عصري:** استخدام `InputDecorationTheme` مخصص، وأزرار `ElevatedButton` جذابة للإجراءات الأساسية (مثل الدخول)، وأزرار `OutlinedButton` للإجراءات الثانوية (مثل مسح الحقول).
* **إدارة الذاكرة بفعالية:** التخلص الآمن (Disposal) من متحكمات النصوص `TextEditingController` عند إغلاق الشاشة لمنع استنزاف ذاكرة الجهاز (Memory Leaks).

## التقنيات المستخدمة

* **إطار العمل:** [Flutter](https://flutter.dev/)
* **لغة البرمجة:** Dartز
## لقطات الشاشة
1. <img width="2551" height="1749" alt="لقطة شاشة_21-4-2026_165832_localhost" src="https://github.com/user-attachments/assets/24dc3f79-48cd-410b-b512-858939c1b910" />
2. <img width="2566" height="1746" alt="لقطة شاشة_21-4-2026_16586_localhost" src="https://github.com/user-attachments/assets/71459d21-8763-42e3-bf0e-012b1e318d5c" />
3. <img width="2556" height="1749" alt="لقطة شاشة_21-4-2026_165750_localhost" src="https://github.com/user-attachments/assets/9514a768-e088-4a89-9e63-623a7c26a09f" />
4. <img width="2566" height="1753" alt="5" src="https://github.com/user-attachments/assets/65e525c2-9100-4df9-898c-2afc0bd59f65" />
5. <img width="2554" height="1753" alt="6" src="https://github.com/user-attachments/assets/d7188d6e-8713-4ba8-9f56-3e5d752af1fa" />
6. <img width="2558" height="1759" alt="7" src="https://github.com/user-attachments/assets/1fa6b6af-e737-4c8e-a667-c11edb11b387" />























