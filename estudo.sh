#!/bin/bash
rm cache_editor
echo "O que deseja meu caro?"
echo "(1) Criar um novo arquivo do Zero"
echo "(2) Editar um Arquivo Existente"
read var_condicao_0
        if test $var_condicao_0 = "2"
        then
                python estudo2.py
        fi
        if test $var_condicao_0 = "1"
        then
                echo "Digite seu texto..."
                read variavel
                echo $variavel >> cache_editor
                for (( contador=0; contador < 10; contador++ )); \
                do #echo "o valor do contador eh $contador" ;\

                        read escrita
                        echo $escrita >> cache_editor
                done
                echo "Nome do seu arquivo sem extensão:"
                read nome_arquivo
                echo "Extensão de seu arquivo:"
                echo "(1) *.txt"
                echo "(2) *.html"
                echo "(3) *.php"
                echo "(4) .py"
                echo "(5) .rb"
                echo "(6) .js"
                echo "(7) .xhtml"
                read var_condicao
                if test $var_condicao = "1"
                then
                        cat cache_editor > "$nome_arquivo".txt
                        rm cache_editor
                fi
                if test $var_condicao = "2"
                then
                        cat cache_editor > "$nome_arquivo".html
                        rm cache_editor
                fi
                if test $var_condicao = "3"
                then
                        cat cache_editor > "$nome_arquivo".php
                        rm cache_editor
                fi
                if test $var_condicao = "4"
                then
                        cat cache_editor > "$nome_arquivo".py
                        rm cache_editor
                fi
                if test $var_condicao = "5"
                then
                        cat cache_editor > "$nome_arquivo".rb
                        rm cache_editor
                fi
                if test $var_condicao = "6"
                then
                        cat cache_editor > "$nome_arquivo".js
                        rm cache_editor
                fi
                if test $var_condicao = "7"
                then
                        cat cache_editor > "$nome_arquivo".xhtml
                        rm cache_editor
                else
                        echo "Arquivo gravado com Sucesso !"
                fi
        fi
