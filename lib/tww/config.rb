# frozen_string_literal: true

module TWW
  Config = Struct.new(:username, :password, :from, :layout) do
    def merge(attributes = {})
      attributes.empty? ? self : dup.copy(attributes)
    end

    def copy(attributes)
      tap { attributes.each { |k, v| self[k] = v } }
    end
  end
end
