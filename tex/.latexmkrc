# We always prefer lualatex to pdflatex by default.
$pdf_mode = 1;

# latexmk should change directory to the source file of the TeX
# so relative paths get resolved correctly
$do_cd = 1;

# We always want to generate PDF files, not the old DVI/PS formats.
$dvi_mode = 0;
$postscript_mode = 0;

# By default, latex is really noisy and produces a lot of output
# that scrolls so fast that you can't read it even if you wanted to.
# It's stored in the *.log file anyway, so we just silence it.
$silent = 1;

# Show the compilation time for kicks
$show_time = 1;

# Certain deep system dependencies seem to get picked up by latexmk, like fonts
# We don't want to re-run LaTeX just because these have changed,
# because this usually doesn't change the output.
# So, we ignore the hashes for files with these extensions
$hash_calc_ignore_pattern{'map'} = '^';
$hash_calc_ignore_pattern{'fmt'} = '^';
$hash_calc_ignore_pattern{'luc'} = '^';
$hash_calc_ignore_pattern{'luc.gz'} = '^';
$hash_calc_ignore_pattern{'gz'} = '^';
$hash_calc_ignore_pattern{'ttf:1:nil'} = '^';

# vim: ft=perl
