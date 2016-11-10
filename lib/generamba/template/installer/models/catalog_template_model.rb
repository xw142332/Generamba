module Generamba
  class CatalogTemplateModel

    attr_reader :rambaspec_name, :folder_name

    def initialize(rambaspec_name, folder_name)
      @rambaspec_name = rambaspec_name
      @folder_name = folder_name
    end
  end
end