

# Ths just puts things into a folder called TMP-SUBMIT that I can then
# test to make sure it compiles.

# When I see that it does compile, I re-run this, then I zip the TMP-SUBMIT
# folder and submit to Wiley as a Latex Source Folder

rm -rf TMP-SUBMIT
mkdir TMP-SUBMIT

cp main.{tex,bbl} TMP-SUBMIT/
cp eca_molecolres.sty TMP-SUBMIT/

cp abstract.tex \
  author-title-etc.tex \
  body-text-of-paper.tex \
  data-accessibility.tex \
  newcomms.tex \
  TMP-SUBMIT/

cp -r figures TMP-SUBMIT/
cp -r inputs TMP-SUBMIT/
cp -r images TMP-SUBMIT/

rm TMP-SUBMIT/figures/permutations-plot.pdf

