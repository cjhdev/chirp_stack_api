module ChirpStackAPI

  $LOAD_PATH.unshift File.join(__dir__, "chirp_stack_api", "generated")

  Dir[File.join(File.dirname(__FILE__), "chirp_stack_api", "generated", "**", "*.rb")].each do |f|

    require f

  end

  $LOAD_PATH.shift

end

