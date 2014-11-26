# encoding: UTF-8

module Sivel2Gen
  module Concerns
    module Models
      module Estadocivil
        extend ActiveSupport::Concern
        include Sivel2Gen::Basica

        included do
          validates :nombre, presence: true, allow_blank: false
          validates :fechacreacion, presence: true, allow_blank: false
        end
      end
    end
  end
end
