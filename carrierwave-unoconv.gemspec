# -*- encoding: utf-8 -*-
require File.expand_path('../lib/carrierwave-unoconv/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Mike MacDonald"]
  gem.email = ["crazymykl@gmail.com"]
  gem.description = "CarrierWave Additional processing to support LibreOffice via unoconv"
  gem.summary = "unoconv carrierwave processor"
  gem.homepage = "http://github.com/crazymykl/carrierwave-unoconv"

  gem.extra_rdoc_files = ["README.md"]

  gem.add_dependency 'carrierwave'

  gem.files         = `git ls-files`.split($\)
  gem.name          = "carrierwave-unoconv"
  gem.require_paths = ["lib"]
  gem.version       = CarrierWave::UNOConv::VERSION
end
