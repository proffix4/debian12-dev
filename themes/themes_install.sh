#!/bin/bash

# Определяем базовый путь для тем
THEME_DIR="$HOME/.local/share/themes"

# Функция для обработки темы
apply_theme() {
    THEME_NAME=$1
    TAR_FILE="$THEME_NAME.tar.gz"
    PATCH_FILE="$THEME_NAME-patch.diff"
    CSS_FILE="$THEME_DIR/$THEME_NAME/cinnamon/cinnamon.css"

    # Проверяем, существует ли папка и удаляем её, если нужно
    if [ -d "$THEME_DIR/$THEME_NAME" ]; then
        echo "Папка $THEME_NAME уже существует. Удаляю..."
        rm -rf "$THEME_DIR/$THEME_NAME"
    fi

    # Разархивируем файл в нужную директорию
    echo "Разархивируем $TAR_FILE в $THEME_DIR..."
    mkdir -p "$THEME_DIR"
    tar -xzf "$TAR_FILE" -C "$THEME_DIR"

    # Применяем diff файл, если он существует
    if [ -f "$PATCH_FILE" ]; then
        echo "Применяем патч $PATCH_FILE к $CSS_FILE..."
        patch "$CSS_FILE" < "$PATCH_FILE"
    else
        echo "Патч-файл $PATCH_FILE не найден! Пропускаем патч для $THEME_NAME."
    fi
}

# Обработка темы Orchidea
apply_theme "Orchidea"

# Обработка темы Tomcat
apply_theme "Tomcat"

# Обработка темы WhiteSur-Dark-solid
apply_theme "WhiteSur-Dark-solid"

# Устанавливаем тему Orchidea по умолчанию
echo "Устанавливаем тему Orchidea по умолчанию..."
gsettings set org.cinnamon.desktop.wm.preferences theme "Orchidea"
gsettings set org.cinnamon.theme name "Orchidea"

# Перезапуск Cinnamon
echo "Перезапускаем оболочку Cinnamon..."
cinnamon --replace & disown

echo "Все темы обработаны, тема Orchidea установлена по умолчанию, и оболочка перезапущена!"
