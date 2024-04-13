# Suprun_E.V
Mobile development homework

# Start building Flutter Android apps on Windows

Flutter - фреймворк от компании Google, который позволяет создавать кроссплатформенные приложения, которые могут использовать однин и тот же код. Спектр платформ широк - это веб-приложения, мобильные приложения под Android и iOS, графические приложения под настольные операционные системы Windows, MacOS, Linux, а также веб-приложения.

В качестве языка разработки используется язык программирования Dart.

## Установка Flutter SDK

Чтобы начать разрабатывать приложения с помощью Flutter, необходимо установить SDK. На странице <https://flutter.dev/docs/get-started/install/> можно найти ссылки на на загрузку SDK для разных операционных систем. Рассмотрим, как установить Flutter SDK на Windows, MacOS и Linux.

## Use VS Code to install Flutter

To install Flutter using these instructions, verify that you have installed Visual Studio Code 1.77 or later and the Flutter extension for VS Code.

#### Prompt VS Code to install Flutter {#prompt-vs-code-to-install-flutter}

1. Launch VS Code.

2. To open the **Command Palette**, press Control \+ Shift \+ P.

3. In the **Command Palette**, type `flutter`.

4. Select **Flutter: New Project**.

5. VS Code prompts you to locate the Flutter SDK on your computer.

   1. If you have the Flutter SDK installed, click **Locate SDK**.

   2. If you do not have the Flutter SDK installed, click **Download SDK**.

      This option sends you the Flutter install page if you have not installed Git for Windows as directed in the [development tools prerequisites](https://docs.flutter.dev/get-started/install/windows/mobile?tab=vscode#development-tools).

6. When prompted **Which Flutter template?**, ignore it. Press Esc. You can create a test project after checking your development setup.

## Первое приложение в Visual Studio Code

### Cоздадим первый проект:

* Для этого перейдем к пункту меню **View -\> Command Palette**. В открышееся окно поиска введем слово "flutter" и среди результатов выберем **Flutter: New Application Project**.

* Затем в новом окне выберем папку, где будет располагаться проект

* Введем название проекта, например, "hello_app".

* В итоге будет создан проект с той же структурой, что и в предыдущих статьях. А в текстовом редакторе будет открыт файл **main.dart**

* Для запуска приложения подключим мобильное устройство с Android к компьютеру, а в Visual Studio Code перейдем к пункту меню **Run -\> Start Debugging**.

* В результате будет построено приложение. Сверху VS Code ообразится панель для управления отладкой, а снизу ообразится вся отладочная информация. А на мобильном устройств будет запущено приложение.
