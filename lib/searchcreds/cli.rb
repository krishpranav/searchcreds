module Searchcreds
    class CLI
        PROGRAM_NAME        = "searchcreds".freeze
        CREDENTIALS_FILE    = File.join(File.dirname(__FILE__), "..", "..", "credentials.json")
        CREDENTIALS_SEPARATOR = "========================================================"

        