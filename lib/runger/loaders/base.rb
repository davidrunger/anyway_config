# frozen_string_literal: true

class Runger::Loaders::Base
  include Tracing

  class << self
    def call(local: Runger::Settings.use_local_files, **)
      new(local:).call(**)
    end
  end

  def initialize(local:)
    @local = local
  end

  def use_local? = @local == true
end
