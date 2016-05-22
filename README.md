Darba kompilēšana tika veikta izmantojot Docker konteineru.
Ja vēlies izmantot Docker sniegtās virtualizācijas iespējas, dodies uz: https://docs.docker.com/linux/step_one/

Īsumā:
Lai uzinstalētu Docker uz Linux OS:
`curl -fsSL https://get.docker.com/ | sh`

Lai uzkompilētu darbu šīs komandas var izpildīt vienā rāvienā, iepriekš nomainot `ABSOLUTE_PATH_TO_TARGET_FOLDER` mainīgo uz absolūto ceļu līdz kompilējamajam darbam:
```
ABSOLUTE_PATH_TO_TARGET_FOLDER='/my/work/is/here'
sudo docker run --rm -ti -v $ABSOLUTE_PATH_TO_TARGET_FOLDER:/tmp --name tianon-latex tianon/latex
cd /tmp
latexmk -pdf -pdflatex="xelatex -interaction=nonstopmode" -use-make main.tex
makeindex main.nlo -s nomencl.ist -o main.nls
rm main.pdf
latexmk -pdf -pdflatex="xelatex -interaction=nonstopmode" -use-make main.tex
exit
echo $?
```
