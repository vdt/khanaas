sanitizer = require 'sanitizer'
REPEAT_LENGTH = 100;

module.exports = 
  khan: (name) ->
    name = sanitizer.escape(name.toUpperCase());
    return name+Array(REPEAT_LENGTH).join(name[name.length-1])

  jones: (noun) ->
    noun = sanitizer.escape(noun);
    noun = noun[0].toUpperCase()+noun[1..-1];
    return noun+'. I <b><i>hate</i></b> '+noun+'.';