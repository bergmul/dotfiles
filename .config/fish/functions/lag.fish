# Defined in - @ line 1
function lag --wraps='la -gs' --wraps='la --gs' --description 'alias lag=la --gs'
  la --gs $argv;
end
