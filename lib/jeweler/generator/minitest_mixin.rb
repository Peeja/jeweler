class Jeweler
  class Generator
    module MinitestMixin

      def default_task
        'test'
      end

      def feature_support_require
        'mini/test'
      end

      def feature_support_extend
        'Mini::Test::Assertions'
      end

      def test_dir
        'test'
      end

      def test_or_spec
        'test'
      end

      def test_task
        'test'
      end

      def test_pattern
        'test/**/*_test.rb'
      end

    end
  end
end
