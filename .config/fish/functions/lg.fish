# Defined in - @ line 1
function lg --wraps='colorls -gs' --wraps='l -gs' --wraps='l --gs' --description 'alias lg=l --gs'
  l --gs $argv;
end
