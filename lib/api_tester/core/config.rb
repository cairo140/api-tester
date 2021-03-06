require 'yaml'

module APITester
	module Core
		class Config

			@@config_file_path = File.join(Base.root, 'config', 'config.yml')
			@@values = YAML::load(File.read @@config_file_path)

			def self.host
				@@values['host']
			end

			def self.port
				@@values['port']
			end

			def self.ssl?
				@@values['ssl'] != nil && @@values['ssl']
			end

		end
	end
end
