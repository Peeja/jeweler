require 'test_helper'

class TestGemspecHelper < Test::Unit::TestCase
  context "given a gemspec" do
    setup do
      @spec = build_spec
      @helper = Jeweler::GemSpecHelper.new(@spec, File.dirname(__FILE__))
    end

    should 'have sane gemspec path' do
      assert_equal "test/#{@spec.name}.gemspec", @helper.path
    end
  end

  context "#write" do
    setup do
      @spec = build_spec
      @helper = Jeweler::GemSpecHelper.new(@spec, File.dirname(__FILE__))
      FileUtils.rm_f(@helper.path)

      @helper.write
    end

    teardown do
      FileUtils.rm_f(@helper.path)
    end

    should "create gemspec file" do
      assert File.exists?(@helper.path)
    end

    should "make valid spec" do
      assert @helper.valid?
    end
  end
end
