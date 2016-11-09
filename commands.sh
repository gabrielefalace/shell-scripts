# grep recursive in current folder (.) only in java files
grep -rnw --color --include="*.java" . -e "some_word_to_search"

# example: which projects have the selenide dependency?
# the l switch only shows lines where occurrency is found
grep -rnwl --color --include="*.xml" . -e "selenide" | cut -d "/" -f 2 | uniq | sort

# finding all files in current folder (.) with name matching a pattern
find . -name "*.java"
