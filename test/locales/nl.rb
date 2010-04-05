require File.expand_path(File.join(File.dirname(__FILE__), "..", "test_helper.rb"))

module E9s
  module Test
    module Locales

      class NL < ActiveSupport::TestCase
        setup do
          I18n.locale = ::E9s::Plugin.init(self)
        end
        
        test "dutch_pluralization" do
          assert_equal "vinnen"   , "vin".pl
          assert_equal "tassen"   , "tas".pl
          assert_equal "telefoons", "telefoon".pl
          assert_equal "vragen"   , "vraag".pl
          assert_equal "huizen"   , "huis".pl
          assert_equal "brieven"  , "brief".pl
          assert_equal "broeken"  , "broek".pl
          assert_equal "tekens"   , "teken".pl
          # assert_equal "vazen"    , "vaas".pl
        end
      end
      
    end
  end
end