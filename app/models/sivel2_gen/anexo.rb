# encoding: UTF-8
module Sivel2Gen
  class Anexo < ActiveRecord::Base
    belongs_to :caso, foreign_key: "id_caso", validate: true,
      class_name: 'Sivel2Gen::Caso'
    belongs_to :ffrecuente, foreign_key: "id_ffrecuente", validate: true, 
      class_name: 'Sivel2Gen::Ffrecuente'
    belongs_to :fotra, foreign_key: "id_fotra", validate: true, 
      class_name: 'Sivel2Gen::Fotra'
    belongs_to :caso_ffrecuente, foreign_key: "id_caso_ffrecuente", 
      validate: true, class_name: 'Sivel2Gen::CasoFfrecuente'

    has_attached_file :adjunto, 
      :path => Sivel2Gen.ruta_anexos + "/:id_:filename"
    validates_attachment_content_type :adjunto, 
      :content_type => ['text/plain', /.*/]
    validates_attachment_presence :adjunto

    validates_presence_of :fecha, :descripcion
  end
end