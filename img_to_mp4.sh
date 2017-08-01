#!/bin/bash
filename="${1##*/}"
if [ -z "$1" ]; then
        echo "Informe o arquivo a ser convertido no primeiro parametro"
        #TODO: Caso houver apenas 1 arquivo na pasta, converter este arquivo
else
        if [ ${1: -4} == ".gif" ]; then
                ffmpeg -y -f gif -i $1 output-$filename.mp4
        else
                ffmpeg -y -loop 1 -i $1 -t 5 -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" output-$filename.mp4
        fi
fi
echo "Conversão completa. By orochidev."
~



