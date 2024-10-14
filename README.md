# README

  

Aqui tem algumas instruções para subir o projeto.
Adicionei um seed com alguns cursos de exemplo para demonstrar a funcionalidade. Para ver videos faça upload de algum arquivo mp4 ou mkv.

  
## SETUP
com docker:
```
$ docker-compose build
$ docker-compose run web rails db:create db:migrate db:seed
$ docker-compose up
```
localmente:
tenha o postgres instalado e rode dentro do projeto:
```
$ rails db:create db:migrate db:seed
$ bin/dev
```