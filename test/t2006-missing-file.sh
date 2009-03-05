#! /bin/sh -e

# If an explicit file is missing, an error should happen

. ../tup.sh
cat > Tupfile << HERE
: foo.c |> echo gcc -c %f |>
HERE
# Note: Not touching foo.c
tup touch Tupfile
update_fail
