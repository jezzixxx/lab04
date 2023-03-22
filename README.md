# lab04
## Плышевская К. ИУ8-23. Лабораторная работа по ТиМП №4
Создала репозиторий на GitHub с названием lab04    
Клонируем lab03 внутри папки projects и переходим в неё:
```
git clone https://github.com/jezzixxx/lab03.git
cd lab03
```
Удаляем существующий репозиторий:    
`git remote remove origin`  
Добавляем удалённый репозиторий:    
`git remote add origin https://github.com/${GITHUB_USERNAME}/lab04.git`    
Удаляем папки **_build** из директорий **hello_world_application** и **solver_application**, чтобы избежать конфликта при сборке проекта через Github Actions.    
Изменяем **CMakeLists.txt** во всех директориях библиотек: **solver_lib**, **formatter_lib** и **formatter_ex_lib**, используя **${CMAKE_CURRENT_SOURCE_DIR}** при сборке set. Например:    
`set(SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex.cpp)`    
Создаём директорию **.github/workflows** и переходим в неё:
```
mkdir .github
cd .github
mkdir workflows
cd workflows
```
Создаём файл формата **.yml**:    
`touch CI.yml`    
Заполняем его:    
`nano CI.yml`    
В открывшемся окне пишем (комментарии опускаем):
```
//Даём название "CMake"
name: CMake

//Прописываем "триггеры" (действия, при выполнении которых будет выполняться программа)
//Выбираем push и pull_request в ветку "master"
on:
 push:
  branches: [master]
 pull_request:
  branches: [master]

//Прописываем сами действия, используя два крупных раздела: сборка на Linux и на Windows. 
//Используем виртуальные машины "ubuntu-latest" и "windows-latest" соответственно.
//В steps пишем сами команды, необходимые для сборки.
jobs: 
 build_Linux:

  runs-on: ubuntu-latest

  steps:
  //Используем готовый action "chekout"
  - uses: actions/checkout@v3

  //Называем шаг
  - name: Configure Solver
  //Пишем команду для сборки solver_application (дальше аналогично)
  //${{github.workspace}} возвращает рабочий каталог по умолчанию
    run: cmake ${{github.workspace}}/solver_application/ -B ${{github.workspace}}/solver_application/build

  - name: Build Solver
    run: cmake --build ${{github.workspace}}/solver_application/build

  - name: Configure HelloWorld
    run: cmake ${{github.workspace}}/hello_world_application/ -B ${{github.workspace}}/hello_world_application/build

  - name: Build HelloWorld
    run: cmake --build ${{github.workspace}}/hello_world_application/build

 build_Windows:

  runs-on: windows-latest

  steps:
  - uses: actions/checkout@v3

  - name: Configure Solver
    run: cmake ${{github.workspace}}/solver_application/ -B ${{github.workspace}}/solver_application/build

  - name: Build Solver
    run: cmake --build ${{github.workspace}}/solver_application/build

  - name: Configure HelloWorld
    run: cmake ${{github.workspace}}/hello_world_application/ -B ${{github.workspace}}/hello_world_application/build

  - name: Build HelloWorld
    run: cmake --build ${{github.workspace}}/hello_world_application/build
```
Возвращаемся в директорию **lab03**:
```
cd ..
cd ..
```
Добавляем изменённые CMakeLists.txt во всех библиотеках, а также папку .github:    
`git add formatter_ex_lib/CMakeLists.txt formatter_lib/CMakeLists.txt solver_lib/CMakeLists.txt .github`    
Создаём коммит:    
`git commit -m "added CI.yml"`    
Пушим в ветку master:    
`git push origin master`    
Проверяем, что тесты на сайте Github прошли успешно.
