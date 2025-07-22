#!/bin/bash

# URL base do repositório
repositorio="https://raw.githubusercontent.com/vinitessele/RedesNeuraisProjetoSoja/main/"

# Cria o diretório figs se não existir
mkdir -p figs

# Lista de imagens a baixar
imagens=("Restnet+ABsolut.png" "Resnet.png")

# Baixa as imagens
for imagem in "${imagens[@]}"
do
    wget -q "${repositorio}${imagem}" -O "figs/${imagem}"
done

# Compila o PDF
latexmk -pdf fenotipagen.tex
