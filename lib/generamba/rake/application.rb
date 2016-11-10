class RambaApplication < Rake::Application
  attr_accessor :current_task, :before_hooks, :after_hooks, :error_hooks

  def initialize
    super
    @rakefiles = DEFAULT_RAKEFILES.dup << 'Rambafile'
    @before_hooks = {}
    @after_hooks  = {}
    @error_hooks  = {}
  end

  def standard_rake_options
    ramba_version = [
      '--version', '-V',
      'Display the program version.',
      lambda do |_|
        puts "ramba, version v.#{Generamba::VERSION}"
        puts "rake, version #{RAKEVERSION}"
        exit
      end
    ]
    super.delete_if { |e| e.first == '--version' }.push(ramba_version)
  end
end
