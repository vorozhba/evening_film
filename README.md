# Программа "Фильм на вечер"

### С чего начать:
Для работы программы требуется установка `ruby` версии `>= 2.3.3`.  

### Запуск:
В командной строке:

    ruby main.rb

### Описание:
Программа выводит нумерованный список режиссеров и предлагает выбрать режиссера, фильм которого вы хоите сегодня посмотреть.
После этого предлагает посмотреть какой-либо из фильмов указанного режиссера.
Список фильмов находится в файлах `/films/*.txt`  
Структура файла:  
1: Название фильма  
2: Режиссер  
3: Год выхода  

### Пример:
![Окно программы](https://github.com/vorozhba/evening_film/blob/master/figures/example.png)

### RSpec:
Тесты находятся в файле: `spec/film_spec.rb`
