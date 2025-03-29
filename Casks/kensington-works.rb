cask 'kensington-works' do
  version '3.1.18'
  sha256 :no_check

  url "https://www.kensington.com/siteassets/software-support/kensingtonworks/2024-update/kensingtonworks_#{version}_1733515752.pkg"
  name 'KensingtonWorks'
  homepage 'https://www.kensington.com/software/kensingtonworks/'

  pkg "kensingtonworks_#{version}_1733515752.pkg"

  uninstall pkgutil: 'com.kensington.kensingtonworks'
end
