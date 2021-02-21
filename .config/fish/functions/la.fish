# Defined in - @ line 1
function la --wraps='colorls -a' --wraps='colorls -A --sd' --wraps='colorls -A' --description 'alias la=colorls -A'
  colorls -A $argv;
end
