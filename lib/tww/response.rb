# frozen_string_literal: true

require 'rexml/document'

module TWW
  class Response
    attr_accessor :status

    def self.parse(xml)
      new.tap { |r| r.status = REXML::Document.new(xml).elements[1].text }
    end

    def ok?
      status == 'OK'
    end

    def nok?
      status == 'NOK'
    end

    def na?
      status == 'NA'
    end

    def error?
      status == 'Erro'
    end
  end
end
