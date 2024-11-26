import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:login_responsive_app/widget/my_container.dart';
import 'package:login_responsive_app/widget/my_textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final double currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "Current width: ${currentWidth.toString()}",
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'images/codingchef.png',
                  width: 150,
                  height: 150,
                )
                    .animate()
                    .fade()
                    .slideY(begin: -3, end: 0)
                    .animate(
                      onPlay: (controller) => controller.repeat(),
                    )
                    .shake(
                      hz: 4,
                      curve: Curves.easeInOutCubic,
                      duration: 1800.ms,
                    ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )
                    .animate()
                    .fade(delay: 500.ms)
                    .slideX(
                      begin: -2,
                      end: 0,
                    )
                    .tint(
                      color: Colors.purple,
                      delay: 1000.ms,
                    ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Sign in to continue',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                )
                    .animate()
                    .fade(
                      delay: 500.ms,
                    )
                    .slideX(
                      begin: 2,
                      end: 0,
                    ),
                const SizedBox(
                  height: 25,
                ),
                const MyTextField(
                  hintText: 'Username',
                  obscureText: false,
                ).animate().fade().slideX(
                      begin: -3,
                      end: 0,
                      duration: 900.ms,
                    ),
                const SizedBox(
                  height: 25,
                ),
                const MyTextField(
                  hintText: 'Password',
                  obscureText: true,
                ).animate().fade().slideX(
                      begin: 3,
                      end: 0,
                      duration: 900.ms,
                    ),
                const SizedBox(
                  height: 25,
                ),
                MyContainer(
                  width: 120,
                  height: 50,
                  backgroundColor: Colors.orange[300],
                  icon: const Icon(Icons.arrow_forward),
                  radius: 20,
                ).animate().fade(delay: 1000.ms),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ).animate().fade().slideX(
                          begin: -3,
                          end: 0,
                          duration: 300.ms,
                        ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register now',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ).animate().fade().slideX(
                          begin: 3,
                          end: 0,
                          duration: 300.ms,
                        ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Powered by CodingChef',
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ).animate().fade().slideX(
                              begin: 3,
                              end: 0,
                              delay: 300.ms,
                            )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    MyContainer(
                      width: 50,
                      height: 50,
                      backgroundColor: Colors.grey[300],
                      imagePath: 'images/codingchef3.png',
                      radius: 16.0,
                    )
                        .animate()
                        .slideX(
                          begin: 3,
                          end: 0,
                          duration: 300.ms,
                        )
                        .animate(onPlay: (controller) => controller.repeat())
                        .shimmer(
                          delay: 1000.ms,
                          duration: 1800.ms,
                        ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}