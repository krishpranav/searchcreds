module Searchcreds
    class CLI
        PROGRAM_NAME        = "searchcreds".freeze
        CREDENTIALS_FILE    = File.join(File.dirname(__FILE__), "..", "..", "credentials.json")
        CREDENTIALS_SEPARATOR = "========================================================"


        class Error < StandartError; end
        class CredentialsFileError < Searchcreds::CLI::Error; end
        class CredentialsFileNotReadable < Searchcreds::CLI::CredentialsFileError; end
        class CredentialsFileCorrupt < Searchcreds::CLI::CredentialsFileError; end
        