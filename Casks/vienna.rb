cask 'vienna' do
  version '3.4.2'
  sha256 'be75e9033cc1039f10983df634bbfbd80332822176101bd2bc13eac930785b89'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml'
  name 'Vienna'
  homepage 'http://www.vienna-rss.com/'

  app 'Vienna.app'

  zap trash: [
               '~/Library/Application Support/Vienna',
               '~/Library/Caches/uk.co.opencommunity.vienna2',
               '~/Library/Cookies/uk.co.opencommunity.vienna2.binarycookies',
               '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
               '~/Library/Saved Application State/uk.co.opencommunity.vienna2.savedState',
             ]
end
