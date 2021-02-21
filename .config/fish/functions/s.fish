# Defined in - @ line 1
function s --wraps='snakemake --cores 4' --description 'alias s=snakemake --cores 4'
  snakemake --cores 4 $argv;
end
