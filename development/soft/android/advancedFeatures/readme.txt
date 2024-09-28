Если не будет работать нормально Google Chrome в Android Studio Emulator, то вот решение:
/home/пользователь/.android/advancedFeatures.ini:
Vulkan = off
GLDirectMem = on

https://stackoverflow.com/questions/69134922/google-chrome-browser-in-android-12-emulator-doesnt-load-any-webpages-internet