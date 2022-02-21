# Elevated Gradient Button Flutter
Elevated Background Gradient with Icon Button For Flutter


You can use it :

```
GradientBackgroundButton(
              icon: const Icon(Icons.login_rounded,
                  color: Colors.white, size: 20),
              leftIcon: 20,
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18, color: Colors.white)
              ),
              gradient: const LinearGradient(
                colors: <Color>[
                  Color(0xFF0060ff),
                  Color.fromARGB(255, 58, 107, 199)
                ],
              ),
              onPressed: () => print('Clicked')
              ),
```
