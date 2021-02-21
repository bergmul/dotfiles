# Defined in - @ line 1
function ll --wraps='colorls -l' --description 'alias ll=colorls -l'
  colorls -l $argv;
end
