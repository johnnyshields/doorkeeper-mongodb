module Doorkeeper
  module Orm
    module Mongoid7
      def self.initialize_models!
        require 'doorkeeper/orm/mongoid7/access_grant'
        require 'doorkeeper/orm/mongoid7/access_token'
        require 'doorkeeper/orm/mongoid7/application'
      end

      def self.initialize_application_owner!
        require 'doorkeeper/models/concerns/ownership'

        Doorkeeper::Application.send :include, Doorkeeper::Models::Ownership
      end

      def self.check_requirements!(_config); end
    end
  end
end
