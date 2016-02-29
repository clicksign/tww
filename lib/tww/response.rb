require 'rexml/document'

module TWW
  class Response
    attr_accessor :document

    def self.parse(xml)
      new.tap { |r| r.document = REXML::Document.new(xml) }
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

    private
    def status
      document.elements[1].text
    end
  end
end
