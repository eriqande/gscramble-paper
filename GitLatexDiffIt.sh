

if [ $# -ne 1 ]; then
    echo " Syntax: GitLatexDiffIt.sh  ref "; echo
    echo "   where ref is a hash of tag for the starting commit you want.  "; echo
    echo "  It will then be compared to the current working copy (even if uncommitted) "
    echo
    echo
    echo " Example: GitLatexDiffIt.sh toCoauthors "
    echo
fi


mkdir -p diffs

M="diffs/main-one-col-diff-to-$1.pdf"

# get the main document (note we have to latex supplement.tex first for xr)
git-latexdiff \
    --bibtex \
    --main main-one-col.tex \
    --output  $M \
    $1  -- && \
    open $M;


