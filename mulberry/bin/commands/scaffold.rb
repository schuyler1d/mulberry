module Mulberry
  module Command
    class Scaffold
      def initialize(args)
        dir = args[0]

        raise "You must specify an app name" unless dir

        dir.gsub!(Dir.pwd + "/", "")
        Mulberry::App.scaffold(dir)
      end
    end
  end
end