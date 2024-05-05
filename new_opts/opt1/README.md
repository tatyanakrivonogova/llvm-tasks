# Сборка
cmake --build build

Если начинаем с .c файла, то сначала преобразовать его в ir (можно начать сразу с IR и пропустить этот шаг):
    ./build/bin/clang -S -emit-llvm -c file.c -o file.ll


Выполнить проход анализа и печати (если несколько, то перечислить внутри общих кавычек через запятую, без пробела)
    ./build/bin/opt --passes="print<custom-opts-name-analysis>" file.ll > /dev/null
Для 1-ой оптимизации:
    ./build/bin/opt --passes="print<custom-opts-brackets-mul-analysis>" new_opts/opt1/test2.ll > /dev/null


Выполнить проход анализа (ничего не напечатается, результаты будут отброшены):
    ./build/bin/opt --passes="require<custom-opts-name-analysis>" file.ll > /dev/null
Для 1-ой оптимизации:
    ./build/bin/opt --passes="require<custom-opts-brackets-mul-analysis>" new_opts/opt1/test2.ll > /dev/null


Выполнить проход трансформации:
    ./build/bin/opt --passes="custom-opts-name-transform" file.ll -o=file.post -S 
Для 1-ой оптимизации:
    ./build/bin/opt --passes="custom-opts-brackets-mul-transform" new_opts/opt1/test2.ll -o=new_opts/opt1/test2.post -S


Выполнить проход трансформации (до машинного кода):
Работает только если есть main
    ./build/bin/opt --passes="custom-opts-name-transform" file.ll -o=file.post.bc
    ./build/bin/clang file.post.bc -o file.post
    ./file.post