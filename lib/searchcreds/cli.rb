module Searchcreds
    class CLI
        PROGRAM_NAME        = "searchcreds".freeze
        CREDENTIALS_FILE    = File.join(File.dirname(__FILE__), "..", "..", "credentials.json")
        CREDENTIALS_SEPARATOR = "========================================================"


        class Error < StandartError; end
        class CredentialsFileError < Searchcreds::CLI::Error; end
        class CredentialsFileNotReadable < Searchcreds::CLI::CredentialsFileError; end
        class CredentialsFileCorrupt < Searchcreds::CLI::CredentialsFileError; end

        def self.run!(args)
            @options = OpenStruct.new
            @options.case_sensitive = false
            @options.exact = false
            @opt_parse = OptionParse.new do |opts|
                opts.banner = "Usage: #{PROGRAM_NAME} [options] term [term2] ... [termN]"
                opts.program_name = PROGRAM_NAME
                opts.separator ""
                opts.separator "Specific options:"