# encoding: UTF-8
require 'rails_helper'

module Sivel2Gen
  RSpec.describe Etnia, :type => :model do

    it "valido" do
      etnia = FactoryGirl.build(:sivel2_gen_etnia)
      expect(etnia).to be_valid
      etnia.destroy
    end

    it "no valido" do
      etnia = FactoryGirl.build(:sivel2_gen_etnia, nombre: '')
      expect(etnia).not_to be_valid
      etnia.destroy
    end

    it "existente" do
      etnia = Sivel2Gen::Etnia.where(id: 1).take
      expect(etnia.nombre).to eq("SIN INFORMACIÓN")
    end

  end
end
