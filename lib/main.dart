import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // تحسين مظهر حقول الإدخال بشكل عام في التطبيق
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          filled: true,
          fillColor: Colors.grey.shade50,
        ),
      ),
      home: const LoginForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // 1. مفتاح النموذج للتحقق من صحة البيانات
  final _formKey = GlobalKey<FormState>();
  
  // 2. متحكمات النصوص
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
  // حالة إظهار/إخفاء كلمة المرور
  bool _obscurePassword = true;

  @override
  void dispose() {
    // تفريغ الذاكرة
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
      ),
      // 🌟 التعديل الجوهري: Center مع SingleChildScrollView للتوسيط ومنع أخطاء لوحة المفاتيح
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: ConstrainedBox(
            // تحديد عرض أقصى للنموذج ليكون شكله جميلاً حتى على الشاشات الكبيرة (التابلت/الويب)
            constraints: const BoxConstraints(maxWidth: 400),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch, // جعل العناصر تمتد بعرض الحاوية
                children: [
                  // أيقونة ترحيبية أو شعار فوق النموذج لزيادة جمالية الواجهة
                  const Icon(Icons.account_circle, size: 80, color: Colors.blue),
                  const SizedBox(height: 32),

                  // 🌟 حقل البريد الإلكتروني مع التحقق الدقيق
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'example@domain.com',
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      // التحقق من وجود @ و نقطة في البريد
                      if (!value.contains('@') || !value.contains('.')) {
                        return 'Please enter a valid email (e.g., name@email.com)';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  
                  // 🌟 حقل كلمة المرور مع زر التفاعل (إظهار/إخفاء)
                  TextFormField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey.shade600,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // 🌟 زر نسيت كلمة المرور (باستخدام InkWell لتأثير النقر) متراصف لليمين
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(4),
                      onTap: () {
                        print('Forgot Password Tapped!');
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue, 
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // 🌟 زر تسجيل الدخول الأساسي بتنسيق جذاب وممتد
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print('Login logic executes here...');
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Processing Login...'),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.blue.shade700,
                      foregroundColor: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('LOGIN', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                  ),
                  const SizedBox(height: 16),
                  
                  // 🌟 زر مسح البيانات بتنسيق ثانوي (Outlined) لتمييزه عن الزر الأساسي
                  OutlinedButton(
                    onPressed: () {
                      _formKey.currentState!.reset();
                      _emailController.clear();
                      _passwordController.clear();
                      
                      // إعادة تعيين حالة إخفاء كلمة المرور للوضع الافتراضي
                      setState(() {
                        _obscurePassword = true;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('CLEAR FORM', style: TextStyle(letterSpacing: 1.2)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}