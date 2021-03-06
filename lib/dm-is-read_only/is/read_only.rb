require 'dm-is-read_only/resource/state/read_only'

module DataMapper
  module Is
    module ReadOnly
      #
      # Makes a Model and all resources of the model, read-only.
      #
      # @param [Hash] options
      #   Additional options.
      #
      # @option options [Boolean] :migrations
      #   Specifies that migrations should be left enabled.
      #
      # @option options [Boolean] :mutable
      #   Specifies that the resource should remain mutable.
      #
      # @example Disable both migrations and mutability
      #   is :read_only
      #
      # @example Do not disable migrations
      #   is :read_only, :migrations => true
      #
      # @example Do not disable mutability
      #   is :read_only, :mutable => true
      #
      def is_read_only(options={})
        unless options[:migrations]
          extend DataMapper::Is::ReadOnly::ClassMethods
        end

        unless options[:mutable]
          include DataMapper::Is::ReadOnly::InstanceMethods
        end
      end

      module ClassMethods
        #
        # Disables migrations.
        #
        # @return [true]
        #   Always returns `true`.
        #
        def migrate!(repository_name=nil)
          true
        end

        #
        # Disables auto-migrations.
        #
        # @return [true]
        #   Always returns `true`.
        #
        def auto_migrate!(repository_name=nil)
          true
        end

        #
        # Disables auto-upgrades.
        #
        # @return [true]
        #   Always returns `true`.
        #
        def auto_upgrade!(repository_name=nil)
          true
        end
      end

      module InstanceMethods
        #
        # Overrides the default `persisted_state` method, to always use
        # {DataMapper::Resource::State::ReadOnly}.
        #
        # @return [DataMapper::Resource::State::ReadOnly]
        #   The read-only state.
        #
        def persisted_state
          @_state ||= Resource::State::ReadOnly.new(self)
        end

        #
        # Prevents the persistence state from forcibly being changed.
        #
        # @param [DataMapper::Resource::State] new_state
        #   The new state to use.
        #
        # @return [DataMapper::Resource::State::ReadOnly]
        #   Always returns the read-only state.
        #
        def persisted_state=(new_state)
          persisted_state
        end
      end
    end
  end
end
