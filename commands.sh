# grep recursive in current folder (.) only in java files
grep -rnw --color --include="*.java" . -e "some_word_to_search"

# GREP OPTIONS
# -r or -R is recursive,
# -n is line number, and
# -w stands for match the whole word.
# -l (lower-case L) can be added to just give the file name of matching files.
# --exclude, --include, --exclude-dir or --include-dir

# example: which projects have the selenide dependency?
# the l switch only shows lines where occurrency is found
grep -rnwl --color --include="*.xml" . -e "selenide" | cut -d "/" -f 2 | uniq | sort

grep -rn --include=*.java . -e "IN_BLACKLIST"



# finding all files in current folder (.) with name matching a pattern
find . -name "*.java"

# find and delete
find . -name '*.orig' -o -name '*.png' -delete
