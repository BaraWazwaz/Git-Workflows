#!/bin/bash

echo "1. Build"
echo "2. Run"
echo "3. Clean"
echo "4. One-time run"
read -p "Choose an option: " choice

case $choice in
    1)
        g++ hello.cpp -o hello.exe
        ;;
    2)
        if [ ! -f hello.exe ]; then
            g++ hello.cpp -o hello.exe
        fi
        ./hello.exe
        ;;
    3)
        rm -f hello.exe
        ;;
    4)
        g++ hello.cpp -o hello.exe && ./hello.exe && rm -f hello.exe
        ;;
    *)
        exit 0
        ;;
esac
