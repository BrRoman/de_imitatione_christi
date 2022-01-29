#!/bin/bash

# Uncomment these 2 lines if needed (= if sed -i doesn't find the files):
# SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# cd "`pwd`"

cp de_imitatione_christi.tex de_imitatione_christi.txt

sed -i "s/\\\\input{config.tex}//g" "de_imitatione_christi.txt"
sed -i "s/\\\\begin{document}//g" "de_imitatione_christi.txt"
sed -i "s/\\\\selectlanguage{latin}//g" "de_imitatione_christi.txt"
sed -i "s/\\\\thispagestyle{empty}//g" "de_imitatione_christi.txt"
sed -i "s/\\\\markboth{.*}{}//g" "de_imitatione_christi.txt"
sed -i "s/\\\\markright{.*}//g" "de_imitatione_christi.txt"
sed -i "s/\\\\textit{\(.*\)}/\1/g" "de_imitatione_christi.txt"
sed -i "s/\\\\TitreA{\(.*\)}/\1/g" "de_imitatione_christi.txt"
sed -i "s/\\\\TitreB{\(.*\)}/\1/g" "de_imitatione_christi.txt"
sed -i "s/\\\\TitreC{\(.*\)}/\1/g" "de_imitatione_christi.txt"
sed -i "s/\\\\TitreD{\(.*\)}/\1/g" "de_imitatione_christi.txt"
sed -i "s/\\\\Normal{\(.*\)}/\1/g" "de_imitatione_christi.txt"
sed -i "s/\\\\Verse{\(.*\)}/\1/g" "de_imitatione_christi.txt"
sed -i "s/\\\\vspace{\(.*\)}//g" "de_imitatione_christi.txt"
sed -i "s/~//g" "de_imitatione_christi.txt"
sed -i "s/%//g" "de_imitatione_christi.txt"
sed -i "s/\\\\end{document}//g" "de_imitatione_christi.txt"

lualatex --shell-escape de_imitatione_christi.tex
